import React from 'react';
import { resolveAssetUrl, useConfig } from '@jsonpages/core';
import type { ImageBreakData, ImageBreakSettings } from './types';

const heightMap: Record<string, string> = {
  sm: 'h-[40vh]',
  md: 'h-[60vh]',
  lg: 'h-[80vh]',
  full: 'h-screen',
};

export const ImageBreak: React.FC<{
  data: ImageBreakData;
  settings?: ImageBreakSettings;
}> = ({ data, settings }) => {
  const { tenantId } = useConfig();
  const h = heightMap[settings?.height ?? 'md'];
  const imageUrl = resolveAssetUrl(data.image?.url ?? '', tenantId);
  const hasImage = !!data.image?.url;

  return (
    <section
      style={{
        '--local-text-muted': 'var(--muted-foreground)',
      } as React.CSSProperties}
      className="relative z-0 w-full overflow-hidden"
    >
      <div className={`relative w-full ${h}`}>
        {hasImage && (
          <img
            src={imageUrl}
            alt={data.image?.alt ?? ''}
            className="w-full h-full object-cover"
            data-jp-field="image"
          />
        )}
      </div>
      {data.caption && (
        <div className="max-w-[1200px] mx-auto px-8 py-3">
          <p
            className="text-[0.75rem] text-[var(--local-text-muted)] italic"
            data-jp-field="caption"
          >
            {data.caption}
          </p>
        </div>
      )}
    </section>
  );
};
