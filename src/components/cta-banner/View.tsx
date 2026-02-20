import React from 'react';
import { resolveAssetUrl, useConfig } from '@jsonpages/core';
import { cn } from '@/lib/utils';
import type { CtaBannerData, CtaBannerSettings } from './types';

export const CtaBanner: React.FC<{ data: CtaBannerData; settings?: CtaBannerSettings }> = ({ data }) => {
  const { tenantId } = useConfig();
  const bgUrl = data.backgroundImage?.url;
  const hasImage = !!bgUrl;
  const resolvedBgUrl = resolveAssetUrl(bgUrl ?? '', tenantId);

  return (
    <section
      style={{
        '--local-bg': hasImage ? 'transparent' : 'var(--card)',
        '--local-text': hasImage ? '#ffffff' : 'var(--foreground)',
        '--local-text-muted': hasImage ? 'rgba(255,255,255,0.8)' : 'var(--muted-foreground)',
        '--local-primary': 'var(--primary)',
        '--local-accent': 'var(--color-accent, #c8a06e)',
      } as React.CSSProperties}
      className="relative py-28 bg-[var(--local-bg)] overflow-hidden text-center"
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
          <div className="absolute inset-0 bg-black/55" />
        </>
      )}

      <div className="relative max-w-[1200px] mx-auto px-8">
        {data.label && (
          <div
            className="inline-flex items-center gap-2 text-[0.72rem] font-bold uppercase tracking-[0.12em] text-[var(--local-accent)] mb-4"
            data-jp-field="label"
          >
            <span className="w-5 h-px bg-[var(--local-accent)]" />
            {data.label}
          </div>
        )}
        <h2
          className="font-display text-[clamp(2rem,4vw,3.2rem)] font-extrabold text-[var(--local-text)] leading-[1.15] tracking-tight mb-6"
          data-jp-field="title"
        >
          {data.title}
        </h2>
        {data.description && (
          <p
            className="text-lg text-[var(--local-text-muted)] max-w-[600px] mx-auto leading-relaxed mb-10"
            data-jp-field="description"
          >
            {data.description}
          </p>
        )}
        {data.ctas && data.ctas.length > 0 && (
          <div className="flex gap-4 justify-center flex-wrap">
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
      </div>
    </section>
  );
};
