import React from 'react';
import { resolveAssetUrl, useConfig } from '@jsonpages/core';
import { cn } from '@/lib/utils';
import type { HeroData, HeroSettings } from './types';

export const Hero: React.FC<{ data: HeroData; settings?: HeroSettings }> = ({ data }) => {
  const { tenantId } = useConfig();
  const bgUrl = data.backgroundImage?.url;
  const hasImage = !!bgUrl;
  const resolvedBgUrl = resolveAssetUrl(bgUrl ?? '', tenantId);

  return (
    <section
      style={{
        '--local-bg': hasImage ? 'transparent' : 'var(--background)',
        '--local-text': hasImage ? '#ffffff' : 'var(--foreground)',
        '--local-text-muted': hasImage ? 'rgba(255,255,255,0.75)' : 'var(--muted-foreground)',
        '--local-primary': 'var(--primary)',
        '--local-accent': 'var(--color-accent, #c8a06e)',
      } as React.CSSProperties}
      className="jp-hero relative min-h-screen flex items-center overflow-hidden"
    >
      {/* Background image */}
      {hasImage && (
        <>
          <img
            src={resolvedBgUrl}
            alt={data.backgroundImage?.alt ?? ''}
            className="absolute inset-0 w-full h-full object-cover"
            data-jp-field="backgroundImage"
          />
          <div className="absolute inset-0 bg-black/50" />
        </>
      )}

      <div className="relative max-w-[1200px] mx-auto px-8 w-full py-32">
        <div className="max-w-[720px]">
          {data.badge && (
            <div
              className={cn(
                'inline-flex items-center gap-2 px-4 py-1.5 rounded-full text-[0.78rem] font-semibold mb-8 tracking-wide jp-animate-in',
                hasImage
                  ? 'bg-[rgba(255,255,255,0.12)] backdrop-blur-sm text-white border border-[rgba(255,255,255,0.2)]'
                  : 'bg-[var(--local-primary)]/10 text-[var(--local-primary)] border border-[var(--local-primary)]/20'
              )}
              data-jp-field="badge"
            >
              {data.badge}
            </div>
          )}
          <h1
            className="font-display text-[clamp(2.8rem,6vw,5rem)] font-black text-[var(--local-text)] leading-[1.05] tracking-tight mb-6 jp-animate-in jp-d1"
            data-jp-field="title"
          >
            {data.title}
            {data.titleHighlight && (
              <>
                <br />
                <span className="text-[var(--local-accent)]" data-jp-field="titleHighlight">
                  {data.titleHighlight}
                </span>
              </>
            )}
          </h1>
          {data.description && (
            <p
              className="text-xl text-[var(--local-text-muted)] max-w-[540px] leading-relaxed mb-10 jp-animate-in jp-d2"
              data-jp-field="description"
            >
              {data.description}
            </p>
          )}
          {data.ctas && data.ctas.length > 0 && (
            <div className="flex gap-4 flex-wrap jp-animate-in jp-d3">
              {data.ctas.map((cta, idx) => (
                <a
                  key={cta.id ?? idx}
                  href={cta.href}
                  data-jp-item-id={cta.id ?? `legacy-${idx}`}
                  data-jp-item-field="ctas"
                  className={cn(
                    'inline-flex items-center gap-2 px-8 py-3.5 rounded-[5px] font-semibold text-base transition-all duration-200 no-underline',
                    cta.variant === 'primary'
                      ? hasImage
                        ? 'bg-white text-[#1a1a1a] hover:bg-[rgba(255,255,255,0.9)] hover:-translate-y-0.5'
                        : 'bg-[var(--local-primary)] text-white hover:brightness-110 hover:-translate-y-0.5'
                      : hasImage
                        ? 'bg-transparent text-white border border-[rgba(255,255,255,0.4)] hover:bg-[rgba(255,255,255,0.1)]'
                        : 'bg-transparent text-[var(--foreground)] border border-[var(--border)] hover:border-[var(--foreground)]/30'
                  )}
                >
                  {cta.label}
                </a>
              ))}
            </div>
          )}
          {data.metrics && data.metrics.length > 0 && (
            <div
              className={cn(
                'flex gap-12 mt-16 pt-12 flex-wrap jp-animate-in jp-d4',
                hasImage ? 'border-t border-[rgba(255,255,255,0.15)]' : 'border-t border-[var(--border)]'
              )}
            >
              {data.metrics.map((metric, idx) => (
                <div
                  key={(metric as { id?: string }).id ?? idx}
                  data-jp-item-id={(metric as { id?: string }).id ?? `legacy-${idx}`}
                  data-jp-item-field="metrics"
                >
                  <div className="text-[2rem] font-bold text-[var(--local-text)] font-display">
                    {metric.val}
                  </div>
                  <div className="text-[0.82rem] text-[var(--local-text-muted)] mt-0.5">
                    {metric.label}
                  </div>
                </div>
              ))}
            </div>
          )}
        </div>
      </div>
    </section>
  );
};
