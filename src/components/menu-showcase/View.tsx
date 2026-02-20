import React from 'react';
import { resolveAssetUrl, useConfig } from '@jsonpages/core';
import type { MenuShowcaseData, MenuShowcaseSettings } from './types';

export const MenuShowcase: React.FC<{
  data: MenuShowcaseData;
  settings?: MenuShowcaseSettings;
}> = ({ data }) => {
  const { tenantId } = useConfig();
  const imageUrl = data.image?.url ? resolveAssetUrl(data.image.url, tenantId) : '';
  const hasImage = !!data.image?.url;

  return (
    <section
      style={{
        '--local-bg': 'var(--background)',
        '--local-text': 'var(--foreground)',
        '--local-text-muted': 'var(--muted-foreground)',
        '--local-accent': 'var(--color-accent, #c8a06e)',
        '--local-primary': 'var(--primary)',
        '--local-border': 'var(--border)',
        '--local-surface': 'var(--card)',
      } as React.CSSProperties}
      className="relative z-0 bg-[var(--local-bg)]"
    >
      {/* Full-bleed image header */}
      {hasImage && (
        <div className="w-full h-[50vh] md:h-[60vh] overflow-hidden">
          <img
            src={imageUrl}
            alt={data.image?.alt ?? ''}
            className="w-full h-full object-cover"
            data-jp-field="image"
          />
        </div>
      )}

      <div className="max-w-[820px] mx-auto px-8 py-28">
        {/* header */}
        <div className="text-center mb-16">
          {data.sectionLabel && (
            <div
              className="inline-flex items-center gap-3 text-[0.72rem] font-bold uppercase tracking-[0.18em] text-[var(--local-accent)] mb-4"
              data-jp-field="sectionLabel"
            >
              <span className="w-8 h-px bg-[var(--local-accent)] opacity-50" />
              {data.sectionLabel}
              <span className="w-8 h-px bg-[var(--local-accent)] opacity-50" />
            </div>
          )}
          <h2
            className="font-display text-[clamp(2rem,4vw,3.4rem)] font-extrabold text-[var(--local-text)] leading-[1.12] tracking-tight mb-4"
            data-jp-field="title"
          >
            {data.title}
          </h2>
          {data.subtitle && (
            <p
              className="text-[1rem] text-[var(--local-text-muted)] max-w-[520px] mx-auto leading-relaxed"
              data-jp-field="subtitle"
            >
              {data.subtitle}
            </p>
          )}
        </div>

        {/* courses */}
        <div className="space-y-0">
          {data.courses.map((course, idx) => (
            <div
              key={course.id ?? idx}
              className="group relative py-8 border-b border-[var(--local-border)] last:border-b-0"
              data-jp-item-id={course.id ?? `legacy-${idx}`}
              data-jp-item-field="courses"
            >
              <div className="absolute -left-2 top-8 text-[0.65rem] font-mono text-[var(--local-accent)] opacity-40 hidden md:block">
                {String(idx + 1).padStart(2, '0')}
              </div>

              <div className="flex flex-col md:flex-row md:items-baseline md:justify-between gap-1 md:gap-8 mb-2">
                <div className="flex items-baseline gap-3">
                  {course.label && (
                    <span className="text-[0.68rem] font-bold uppercase tracking-[0.14em] text-[var(--local-accent)] opacity-70 shrink-0">
                      {course.label}
                    </span>
                  )}
                  <h3 className="font-display text-[1.3rem] font-bold text-[var(--local-text)] tracking-tight">
                    {course.name}
                  </h3>
                </div>
                {course.tag && (
                  <span className="text-[0.7rem] font-medium text-[var(--local-accent)] bg-[var(--local-surface)] px-3 py-1 rounded-full shrink-0 self-start md:self-auto">
                    {course.tag}
                  </span>
                )}
              </div>
              <p className="text-[0.88rem] text-[var(--local-text-muted)] leading-relaxed max-w-[600px]">
                {course.description}
              </p>
            </div>
          ))}
        </div>

        {data.footerNote && (
          <div className="mt-12 pt-8 text-center">
            <p
              className="text-[0.82rem] text-[var(--local-text-muted)] italic opacity-70 max-w-[480px] mx-auto"
              data-jp-field="footerNote"
            >
              {data.footerNote}
            </p>
          </div>
        )}
      </div>
    </section>
  );
};
