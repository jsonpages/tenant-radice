#!/bin/bash
set -e # Termina se c'è un errore

echo "Inizio ricostruzione progetto..."

mkdir -p "."
echo "Creating README.md..."
cat << 'END_OF_FILE_CONTENT' > "README.md"
# 🌿 Radice — Michelin Green Star Template

> A high-performance, local-first restaurant template built with **JsonPages**.
> **Zero Runtime Overhead. 100% Type-Safe.**

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/jsonpages/radice-template)

![Radice Preview](https://raw.githubusercontent.com/jsonpages/radice-template/main/public/assets/preview-hero.jpg)

## ✨ Features

- **⚡ Green Build:** Compiles to pure HTML/CSS. No JS bloat.
- **🎨 Dual Engine:** Switch between Tailwind v4 and Bootstrap Italia logic via JSON.
- **📱 Local CMS:** Edit content in `src/data` and see updates instantly.
- **🖼️ Asset Management:** Optimized image handling.
- **🏎️ 100/100 Lighthouse:** SEO ready out of the box.

## 🛠️ How to Edit

This site is built with **[JsonPages](https://www.npmjs.com/package/@jsonpages/cli)**.

1. **Clone & Install:**
   ```bash
   npm install
   ```

2. **Start Editing:**
   ```bash
   npm run dev
   ```
   Open `http://localhost:5173`. The **Admin Inspector** will appear automatically.

3. **Customize:**
   - Edit `src/data/config/theme.json` to change colors.
   - Edit `src/data/pages/home.json` to change text and images.

## 🚀 Deploy

Click the button above or run `npx vercel` in your terminal.

---

Powered by [JsonPages Ecosystem](https://www.npmjs.com/org/jsonpages).

END_OF_FILE_CONTENT
# SKIP: code2text.sh:Zone.Identifier è un file binario e non può essere convertito in testo.
echo "Creating components.json..."
cat << 'END_OF_FILE_CONTENT' > "components.json"
{
  "$schema": "https://ui.shadcn.com/schema.json",
  "style": "radix-nova",
  "rsc": false,
  "tsx": true,
  "tailwind": {
    "config": "",
    "css": "src/index.css",
    "baseColor": "zinc",
    "cssVariables": true,
    "prefix": ""
  },
  "aliases": {
    "components": "@/components",
    "utils": "@/lib/utils",
    "ui": "@/components/ui",
    "lib": "@/lib",
    "hooks": "@/hooks"
  }
}

END_OF_FILE_CONTENT
echo "Creating eslint.config.js..."
cat << 'END_OF_FILE_CONTENT' > "eslint.config.js"
import js from '@eslint/js'
import globals from 'globals'
import reactHooks from 'eslint-plugin-react-hooks'
import reactRefresh from 'eslint-plugin-react-refresh'
import tseslint from 'typescript-eslint'
import { defineConfig, globalIgnores } from 'eslint/config'

export default defineConfig([
  globalIgnores(['dist']),
  {
    files: ['**/*.{ts,tsx}'],
    extends: [
      js.configs.recommended,
      tseslint.configs.recommended,
      reactHooks.configs.flat.recommended,
      reactRefresh.configs.vite,
    ],
    languageOptions: {
      ecmaVersion: 2020,
      globals: globals.browser,
    },
  },
])

END_OF_FILE_CONTENT
echo "Creating index.html..."
cat << 'END_OF_FILE_CONTENT' > "index.html"
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="JsonPages - Global Authoring. Global Governance." />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Instrument+Sans:wght@400;500;600;700&family=JetBrains+Mono:wght@400;500&family=Playfair+Display:wght@700;800;900&display=swap" rel="stylesheet" />
    <title>🌿 Radice - The Earth, Plated.</title>
  </head>
  <body>
    <div id="root"></div>
    <script type="module" src="/src/main.tsx"></script>
  </body>
</html>


END_OF_FILE_CONTENT
echo "Creating package.json..."
cat << 'END_OF_FILE_CONTENT' > "package.json"
{
  "name": "radice",
  "private": true,
  "version": "1.0.0",
  "type": "module",
  "scripts": {
    "dev": "vite",
    "build": "tsc && vite build",
    "preview": "vite preview"
  },
  "dependencies": {
    "@jsonpages/core": "^1.0.19",
    "clsx": "^2.1.1",
    "file-saver": "^2.0.5",
    "jszip": "^3.10.1",
    "lucide-react": "^0.474.0",
    "radix-ui": "^1.4.3",
    "react": "^19.2.4",
    "react-dom": "^19.2.4",
    "react-router-dom": "^6.30.3",
    "tailwind-merge": "^3.5.0",
    "zod": "^3.25.76"
  },
  "devDependencies": {
    "@tailwindcss/vite": "^4.2.0",
    "@types/file-saver": "^2.0.7",
    "@types/node": "^22.19.11",
    "@types/react": "^19.2.14",
    "@types/react-dom": "^19.2.3",
    "@vitejs/plugin-react": "^4.7.0",
    "tailwindcss": "^4.2.0",
    "typescript": "^5.9.3",
    "vite": "^6.4.1"
  }
}

END_OF_FILE_CONTENT
mkdir -p "public"
mkdir -p "public/assets"
mkdir -p "public/assets/images"
# SKIP: public/assets/images/1771597331337-hero.jpg è un file binario e non può essere convertito in testo.
# SKIP: public/assets/images/1771598125734-Firefly_Flux_a_michelin_green_star_restaurant_interior__detail__fine_dining__954770.jpg è un file binario e non può essere convertito in testo.
# SKIP: public/assets/images/1771598312886-Firefly_a_tasting_menu_photo_with_multiple_plates_for_a_michelin_green_star_restaurant__detai_954770.png è un file binario e non può essere convertito in testo.
# SKIP: public/assets/images/1771598502228-Firefly_a_photo_of_the_young_male_chef_of_a_michelin_green_star_restaurant_in_the_act_of_cook_954770.png è un file binario e non può essere convertito in testo.
# SKIP: public/assets/images/1771599023714-Generated_Image_February_20__2026_-_3_49PM.jpeg è un file binario e non può essere convertito in testo.
# SKIP: public/assets/preview-hero.jpg è un file binario e non può essere convertito in testo.
echo "Creating public/vite.svg..."
cat << 'END_OF_FILE_CONTENT' > "public/vite.svg"
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" role="img" class="iconify iconify--logos" width="31.88" height="32" preserveAspectRatio="xMidYMid meet" viewBox="0 0 256 257"><defs><linearGradient id="IconifyId1813088fe1fbc01fb466" x1="-.828%" x2="57.636%" y1="7.652%" y2="78.411%"><stop offset="0%" stop-color="#41D1FF"></stop><stop offset="100%" stop-color="#BD34FE"></stop></linearGradient><linearGradient id="IconifyId1813088fe1fbc01fb467" x1="43.376%" x2="50.316%" y1="2.242%" y2="89.03%"><stop offset="0%" stop-color="#FFEA83"></stop><stop offset="8.333%" stop-color="#FFDD35"></stop><stop offset="100%" stop-color="#FFA800"></stop></linearGradient></defs><path fill="url(#IconifyId1813088fe1fbc01fb466)" d="M255.153 37.938L134.897 252.976c-2.483 4.44-8.862 4.466-11.382.048L.875 37.958c-2.746-4.814 1.371-10.646 6.827-9.67l120.385 21.517a6.537 6.537 0 0 0 2.322-.004l117.867-21.483c5.438-.991 9.574 4.796 6.877 9.62Z"></path><path fill="url(#IconifyId1813088fe1fbc01fb467)" d="M185.432.063L96.44 17.501a3.268 3.268 0 0 0-2.634 3.014l-5.474 92.456a3.268 3.268 0 0 0 3.997 3.378l24.777-5.718c2.318-.535 4.413 1.507 3.936 3.838l-7.361 36.047c-.495 2.426 1.782 4.5 4.151 3.78l15.304-4.649c2.372-.72 4.652 1.36 4.15 3.788l-11.698 56.621c-.732 3.542 3.979 5.473 5.943 2.437l1.313-2.028l72.516-144.72c1.215-2.423-.88-5.186-3.54-4.672l-25.505 4.922c-2.396.462-4.435-1.77-3.759-4.114l16.646-57.705c.677-2.35-1.37-4.583-3.769-4.113Z"></path></svg>
END_OF_FILE_CONTENT
mkdir -p "src"
echo "Creating src/App.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/App.tsx"
import { useState, useEffect } from 'react';
import { JsonPagesEngine } from '@jsonpages/core';
import type { LibraryImageEntry } from '@jsonpages/core';
import { ComponentRegistry } from '@/lib/ComponentRegistry';
import { SECTION_SCHEMAS } from '@/lib/schemas';
import { addSectionConfig } from '@/lib/addSectionConfig';
import { getHydratedData } from '@/lib/draftStorage';
import type { JsonPagesConfig, ProjectState } from '@jsonpages/core';
import type { SiteConfig, ThemeConfig, MenuConfig } from '@/types';

import siteData from '@/data/config/site.json';
import themeData from '@/data/config/theme.json';
import menuData from '@/data/config/menu.json';
import { getFilePages } from '@/lib/getFilePages';

import fontsCss from './fonts.css?inline';
import tenantCss from './index.css?inline';

const themeConfig = themeData as unknown as ThemeConfig;
const menuConfig = menuData as unknown as MenuConfig;
const TENANT_ID = 'alpha';

const filePages = getFilePages();
const fileSiteConfig = siteData as unknown as SiteConfig;
const MAX_UPLOAD_SIZE_BYTES = 5 * 1024 * 1024;

function getInitialData() {
  return getHydratedData(TENANT_ID, filePages, fileSiteConfig);
}

function App() {
  const [{ pages, siteConfig }] = useState(getInitialData);
  const [assetsManifest, setAssetsManifest] = useState<LibraryImageEntry[]>([]);

  useEffect(() => {
    fetch('/api/list-assets')
      .then((r) => (r.ok ? r.json() : []))
      .then((list: LibraryImageEntry[]) => setAssetsManifest(Array.isArray(list) ? list : []))
      .catch(() => setAssetsManifest([]));
  }, []);

  const config: JsonPagesConfig = {
    tenantId: TENANT_ID,
    registry: ComponentRegistry as JsonPagesConfig['registry'],
    schemas:  SECTION_SCHEMAS  as unknown as JsonPagesConfig['schemas'],
    pages,
    siteConfig,
    themeConfig,
    menuConfig,
    themeCss: { tenant: fontsCss + '\n' + tenantCss },
    addSection: addSectionConfig,
    persistence: {
      async saveToFile(state: ProjectState, slug: string): Promise<void> {
        const res = await fetch('/api/save-to-file', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ projectState: state, slug }),
        });
        const body = (await res.json().catch(() => ({}))) as { error?: string };
        if (!res.ok) throw new Error(body.error ?? `Save to file failed: ${res.status}`);
      },
    },
    assets: {
      assetsBaseUrl: '/assets',
      assetsManifest,
      async onAssetUpload(file: File): Promise<string> {
        if (!file.type.startsWith('image/')) throw new Error('Invalid file type.');
        if (file.size > MAX_UPLOAD_SIZE_BYTES) throw new Error(`File too large. Max ${MAX_UPLOAD_SIZE_BYTES / 1024 / 1024}MB.`);
        const base64 = await new Promise<string>((resolve, reject) => {
          const reader = new FileReader();
          reader.onload  = () => resolve((reader.result as string).split(',')[1] ?? '');
          reader.onerror = () => reject(reader.error);
          reader.readAsDataURL(file);
        });
        const res = await fetch('/api/upload-asset', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ filename: file.name, mimeType: file.type || undefined, data: base64 }),
        });
        const body = (await res.json().catch(() => ({}))) as { url?: string; error?: string };
        if (!res.ok) throw new Error(body.error || `Upload failed: ${res.status}`);
        if (typeof body.url !== 'string') throw new Error('Invalid server response: missing url');
        return body.url;
      },
    },
  };

  return <JsonPagesEngine config={config} />;
}

export default App;

END_OF_FILE_CONTENT
mkdir -p "src/components"
echo "Creating src/components/NotFound.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/NotFound.tsx"
import React from 'react';
import { Icon } from '@/lib/IconResolver';

export const NotFound: React.FC = () => {
  return (
    <div 
      style={{
        '--local-bg': 'var(--color-background)',
        '--local-text': 'var(--color-text)',
        '--local-text-muted': 'var(--color-text-muted)',
        '--local-primary': 'var(--color-primary)',
        '--local-radius-md': 'var(--radius-md)',
      } as React.CSSProperties}
      className="min-h-screen flex flex-col items-center justify-center bg-[var(--local-bg)] px-6"
    >
      <h1 className="text-6xl font-bold text-[var(--local-text)] mb-4">404</h1>
      <p className="text-xl text-[var(--local-text-muted)] mb-8">Page not found</p>
      <a
        href="/"
        className="inline-flex items-center gap-2 px-6 py-3 rounded-[var(--local-radius-md)] bg-[var(--local-primary)] text-[var(--local-bg)] font-semibold text-sm hover:opacity-90 transition-opacity"
      >
        <span>Back to Home</span>
        <Icon name="arrow-right" size={16} />
      </a>
    </div>
  );
};





END_OF_FILE_CONTENT
mkdir -p "src/components/arch-layers"
echo "Creating src/components/arch-layers/View.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/arch-layers/View.tsx"
import React from 'react';
import { cn } from '@/lib/utils';
import type { ArchLayersData, ArchLayersSettings, ArchLayerLevel, SyntaxTokenType } from './types';

const layerBgStyles: Record<ArchLayerLevel, string> = {
  l0: 'bg-[#3b82f6]',
  l1: 'bg-[rgba(59,130,246,0.6)]',
  l2: 'bg-[rgba(59,130,246,0.35)]',
};

const tokenStyles: Record<SyntaxTokenType, string> = {
  plain: 'text-[#cbd5e1]',
  keyword: 'text-[#60a5fa]',
  type: 'text-[#22d3ee]',
  string: 'text-[#4ade80]',
  comment: 'text-[#64748b] italic',
  operator: 'text-[#f472b6]',
};

export const ArchLayers: React.FC<{ data: ArchLayersData; settings?: ArchLayersSettings }> = ({ data }) => {
  return (
    <section
      style={{
        '--local-bg': 'var(--card)',
        '--local-text': 'var(--foreground)',
        '--local-text-muted': 'var(--muted-foreground)',
        '--local-primary': 'var(--primary)',
        '--local-accent': 'var(--color-accent, #60a5fa)',
        '--local-border': 'var(--border)',
        '--local-deep': 'var(--background)',
      } as React.CSSProperties}
      className="relative z-0 py-28 bg-[var(--local-bg)]"
    >
      <div className="absolute top-0 left-0 right-0 h-px bg-gradient-to-r from-transparent via-[rgba(59,130,246,0.1)] to-transparent" />
      <div className="absolute bottom-0 left-0 right-0 h-px bg-gradient-to-r from-transparent via-[rgba(59,130,246,0.1)] to-transparent" />
      <div className="max-w-[1200px] mx-auto px-8">
        <div className="text-center">
          {data.label && (
            <div className="jp-section-label inline-flex items-center gap-2 text-[0.72rem] font-bold uppercase tracking-[0.12em] text-[var(--local-accent)] mb-4" data-jp-field="label">
              <span className="w-5 h-px bg-[var(--local-primary)]" />
              {data.label}
            </div>
          )}
          <h2 className="font-display text-[clamp(2rem,4vw,3.2rem)] font-extrabold text-[var(--local-text)] leading-[1.15] tracking-tight mb-4" data-jp-field="title">
            {data.title}
          </h2>
          {data.description && (
            <p className="text-lg text-[var(--local-text-muted)] max-w-[600px] mx-auto leading-relaxed" data-jp-field="description">
              {data.description}
            </p>
          )}
        </div>
        <div className="mt-14 max-w-[740px] mx-auto">
          {data.layers.map((layer, idx) => (
            <div
              key={layer.id ?? idx}
              className="group border border-[rgba(255,255,255,0.06)] rounded-[7px] p-8 mb-4 bg-[rgba(255,255,255,0.015)] flex items-start gap-6 transition-all duration-300 hover:border-[rgba(59,130,246,0.2)] hover:translate-x-1.5"
              data-jp-item-id={layer.id ?? `legacy-${idx}`}
              data-jp-item-field="layers"
            >
              <div className={cn(
                'shrink-0 w-9 h-9 rounded-lg flex items-center justify-center font-mono text-[0.85rem] font-bold text-white',
                layerBgStyles[layer.layerLevel]
              )}>
                {layer.number}
              </div>
              <div>
                <h4 className="text-[1.05rem] font-bold text-[var(--local-text)] mb-1.5">
                  {layer.title}
                </h4>
                <p className="text-[0.92rem] text-[var(--local-text-muted)] leading-relaxed">
                  {layer.description}
                </p>
              </div>
            </div>
          ))}
        </div>
        {data.codeLines && data.codeLines.length > 0 && (
          <div className="mt-12 max-w-[740px] mx-auto">
            <div className="border border-[rgba(255,255,255,0.08)] rounded-[7px] overflow-hidden bg-[var(--local-deep)]">
              <div className="flex items-center gap-2 px-5 py-3 bg-[rgba(255,255,255,0.03)] border-b border-[rgba(255,255,255,0.06)]">
                <span className="w-2.5 h-2.5 rounded-full bg-[#ef4444]" />
                <span className="w-2.5 h-2.5 rounded-full bg-[#f59e0b]" />
                <span className="w-2.5 h-2.5 rounded-full bg-[#22c55e]" />
                {data.codeFilename && (
                  <span className="ml-3 font-mono text-[0.75rem] text-[var(--local-text-muted)] opacity-60" data-jp-field="codeFilename">
                    {data.codeFilename}
                  </span>
                )}
              </div>
              <div className="p-6 font-mono text-[0.82rem] leading-[1.7] overflow-x-auto">
                {data.codeLines.map((line, idx) => (
                  <div key={idx} data-jp-item-id={(line as { id?: string }).id ?? `legacy-${idx}`} data-jp-item-field="codeLines">
                    <span className={tokenStyles[line.tokenType]}>
                      {line.content}
                    </span>
                  </div>
                ))}
              </div>
            </div>
          </div>
        )}
      </div>
    </section>
  );
};

END_OF_FILE_CONTENT
echo "Creating src/components/arch-layers/index.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/arch-layers/index.ts"
export * from './View';
export * from './schema';
export * from './types';

END_OF_FILE_CONTENT
echo "Creating src/components/arch-layers/schema.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/arch-layers/schema.ts"
import { z } from 'zod';
import { BaseSectionData, BaseArrayItem } from '@/lib/base-schemas';

export const ArchLayerLevelSchema = z.enum(['l0', 'l1', 'l2']);
export const SyntaxTokenTypeSchema = z.enum(['plain', 'keyword', 'type', 'string', 'comment', 'operator']);

const ArchLayerItemSchema = BaseArrayItem.extend({
  number: z.string().describe('ui:text'),
  layerLevel: ArchLayerLevelSchema.describe('ui:select'),
  title: z.string().describe('ui:text'),
  description: z.string().describe('ui:textarea'),
});

const SyntaxLineSchema = z.object({
  content: z.string().describe('ui:text'),
  tokenType: SyntaxTokenTypeSchema.default('plain').describe('ui:select'),
});

export const ArchLayersSchema = BaseSectionData.extend({
  label: z.string().optional().describe('ui:text'),
  title: z.string().describe('ui:text'),
  description: z.string().optional().describe('ui:textarea'),
  layers: z.array(ArchLayerItemSchema).describe('ui:list'),
  codeFilename: z.string().optional().describe('ui:text'),
  codeLines: z.array(SyntaxLineSchema).optional().describe('ui:list'),
});

END_OF_FILE_CONTENT
echo "Creating src/components/arch-layers/types.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/arch-layers/types.ts"
import { z } from 'zod';
import { BaseSectionSettingsSchema } from '@/lib/base-schemas';
import { ArchLayersSchema, ArchLayerLevelSchema, SyntaxTokenTypeSchema } from './schema';

export type ArchLayersData = z.infer<typeof ArchLayersSchema>;
export type ArchLayersSettings = z.infer<typeof BaseSectionSettingsSchema>;
export type ArchLayerLevel = z.infer<typeof ArchLayerLevelSchema>;
export type SyntaxTokenType = z.infer<typeof SyntaxTokenTypeSchema>;

END_OF_FILE_CONTENT
mkdir -p "src/components/cli-section"
echo "Creating src/components/cli-section/View.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/cli-section/View.tsx"
import React from 'react';
import type { CliSectionData, CliSectionSettings } from './types';

export const CliSection: React.FC<{ data: CliSectionData; settings?: CliSectionSettings }> = ({ data }) => {
  return (
    <section
      style={{
        '--local-bg':         'var(--card)',
        '--local-text':       'var(--foreground)',
        '--local-text-muted': 'var(--muted-foreground)',
        '--local-primary':    'var(--primary)',
        '--local-accent':     'var(--color-accent, #60a5fa)',
        '--local-border':     'var(--border)',
      } as React.CSSProperties}
      className="relative z-0 py-28 bg-[var(--local-bg)]"
    >
      <div className="absolute top-0 left-0 right-0 h-px bg-gradient-to-r from-transparent via-[rgba(59,130,246,0.1)] to-transparent" />
      <div className="max-w-[1200px] mx-auto px-8 grid grid-cols-2 gap-24 items-center">

        {/* LEFT */}
        <div>
          {data.label && (
            <div className="jp-section-label inline-flex items-center gap-2 text-[0.68rem] font-mono font-bold uppercase tracking-[0.14em] text-[var(--local-accent)] mb-5" data-jp-field="label">
              <span className="w-6 h-px bg-[var(--local-primary)]" />
              {data.label}
            </div>
          )}
          <h2
            className="font-display text-[clamp(2rem,4.5vw,3.8rem)] font-black text-[var(--local-text)] leading-[1.05] tracking-tight mb-5"
            data-jp-field="title"
          >
            {data.title}
          </h2>
          {data.description && (
            <p className="text-[1.05rem] text-[var(--local-text-muted)] leading-[1.8] mb-8" data-jp-field="description">
              {data.description}
            </p>
          )}
          {data.steps && data.steps.length > 0 && (
            <div className="flex flex-col">
              {data.steps.map((step, idx) => (
                <div
                  key={step.id ?? idx}
                  className="grid grid-cols-[32px_1fr] gap-4 py-6 border-b border-[rgba(255,255,255,0.06)] last:border-b-0 items-start"
                  data-jp-item-id={step.id ?? `legacy-${idx}`}
                  data-jp-item-field="steps"
                >
                  <div className="font-display text-[1.25rem] font-black text-[#334155] leading-none mt-0.5">{step.num}</div>
                  <div>
                    <div className="font-display font-bold text-[1rem] text-[var(--local-text)] mb-1">{step.title}</div>
                    <p className="text-[0.85rem] text-[var(--local-text-muted)] leading-[1.6]">{step.description}</p>
                  </div>
                </div>
              ))}
            </div>
          )}
        </div>

        {/* RIGHT — terminal */}
        <div className="rounded-[12px] overflow-hidden border border-[rgba(255,255,255,0.10)] shadow-[0_30px_60px_rgba(0,0,0,0.5)]">
          <div className="bg-[#0d1828] px-4 py-2.5 flex items-center gap-1.5 border-b border-[rgba(255,255,255,0.05)]">
            <span className="w-2.5 h-2.5 rounded-full bg-[#ef4444]" />
            <span className="w-2.5 h-2.5 rounded-full bg-[#f59e0b]" />
            <span className="w-2.5 h-2.5 rounded-full bg-[#22c55e]" />
            <span className="mx-auto font-mono text-[0.60rem] text-[rgba(255,255,255,0.25)]">Terminal</span>
          </div>
          <div className="bg-[#020508] px-7 py-6 font-mono text-[0.78rem] leading-[2.1] overflow-x-auto">
            <div><span className="text-[#5c6370] italic"># Step 1 — install CLI globally</span></div>
            <div><span className="text-[#3b82f6]">$</span> <span className="text-white">npm install -g </span><span className="text-[#98c379]">@jsonpages/cli@latest</span></div>
            <div><span className="text-[#334155]">added 1 package in 2.3s</span></div>
            <div><span className="text-[#22c55e]">✓ @jsonpages/cli@1.2.0 installed</span></div>
            <div>&nbsp;</div>
            <div><span className="text-[#5c6370] italic"># Step 2 — scaffold a new tenant</span></div>
            <div><span className="text-[#3b82f6]">$</span> <span className="text-[#98c379]">npx @jsonpages/cli@latest</span> <span className="text-white">new my-tenant</span></div>
            <div><span className="text-[#22c55e]">  ✓ src/components/hero/</span></div>
            <div><span className="text-[#22c55e]">  ✓ src/lib/schemas.ts</span></div>
            <div><span className="text-[#22c55e]">  ✓ src/lib/ComponentRegistry.tsx</span></div>
            <div><span className="text-[#22c55e]">  ✓ src/data/pages/home.json</span></div>
            <div><span className="text-[#22c55e]">  ✓ Done in 1.8s</span></div>
            <div>&nbsp;</div>
            <div><span className="text-[#5c6370] italic"># Step 3 — start Studio</span></div>
            <div><span className="text-[#3b82f6]">$</span> <span className="text-white">cd my-tenant && npm run dev</span></div>
            <div><span className="text-[#22c55e]">  ➜ Studio ready at </span><span className="text-[#60a5fa]">http://localhost:5173</span><span className="inline-block w-2 h-[1em] bg-[#3b82f6] ml-1 align-text-bottom animate-pulse" /></div>
          </div>
        </div>

      </div>
    </section>
  );
};

END_OF_FILE_CONTENT
echo "Creating src/components/cli-section/index.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/cli-section/index.ts"
export * from './View';
export * from './schema';
export * from './types';

END_OF_FILE_CONTENT
echo "Creating src/components/cli-section/schema.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/cli-section/schema.ts"
import { z } from 'zod';
import { BaseSectionData, BaseArrayItem } from '@/lib/base-schemas';

const CliStepSchema = BaseArrayItem.extend({
  num:         z.string().describe('ui:text'),
  title:       z.string().describe('ui:text'),
  description: z.string().describe('ui:textarea'),
});

export const CliSectionSchema = BaseSectionData.extend({
  label:       z.string().optional().describe('ui:text'),
  title:       z.string().describe('ui:text'),
  description: z.string().optional().describe('ui:textarea'),
  steps:       z.array(CliStepSchema).optional().describe('ui:list'),
});

END_OF_FILE_CONTENT
echo "Creating src/components/cli-section/types.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/cli-section/types.ts"
import { z } from 'zod';
import { BaseSectionSettingsSchema } from '@/lib/base-schemas';
import { CliSectionSchema } from './schema';

export type CliSectionData     = z.infer<typeof CliSectionSchema>;
export type CliSectionSettings = z.infer<typeof BaseSectionSettingsSchema>;

END_OF_FILE_CONTENT
mkdir -p "src/components/cms-ice"
echo "Creating src/components/cms-ice/View.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/cms-ice/View.tsx"
import React from 'react';
import type { CmsIceData, CmsIceSettings } from './types';

export const CmsIce: React.FC<{ data: CmsIceData; settings?: CmsIceSettings }> = ({ data }) => {
  return (
    <section
      style={{
        '--local-bg':         'var(--background)',
        '--local-text':       'var(--foreground)',
        '--local-text-muted': 'var(--muted-foreground)',
        '--local-primary':    'var(--primary)',
        '--local-accent':     'var(--color-accent, #60a5fa)',
        '--local-cyan':       'var(--color-secondary, #22d3ee)',
        '--local-border':     'var(--border)',
        '--local-surface':    'var(--card)',
      } as React.CSSProperties}
      className="relative z-0 py-28 bg-[var(--local-bg)]"
    >
      <div className="absolute top-0 left-0 right-0 h-px bg-gradient-to-r from-transparent via-[rgba(59,130,246,0.1)] to-transparent" />
      <div className="max-w-[1200px] mx-auto px-8">

        {/* Header */}
        <div className="grid grid-cols-2 gap-16 items-end mb-16">
          <div>
            {data.label && (
              <div className="jp-section-label inline-flex items-center gap-2 text-[0.68rem] font-mono font-bold uppercase tracking-[0.14em] text-[var(--local-accent)] mb-5" data-jp-field="label">
                <span className="w-6 h-px bg-[var(--local-primary)]" />
                {data.label}
              </div>
            )}
            <h2
              className="font-display text-[clamp(2rem,4.5vw,3.8rem)] font-black text-[var(--local-text)] leading-[1.05] tracking-tight"
              data-jp-field="title"
            >
              {data.title}
            </h2>
          </div>
          {data.description && (
            <p
              className="text-[1.05rem] text-[var(--local-text-muted)] leading-[1.8] pb-1"
              data-jp-field="description"
            >
              {data.description}
            </p>
          )}
        </div>

        {/* ICE Mockup — product demo, decorative */}
        <div className="rounded-[16px] overflow-hidden border border-[rgba(255,255,255,0.10)] shadow-[0_0_0_1px_rgba(255,255,255,0.03),0_60px_120px_rgba(0,0,0,0.7),0_0_80px_rgba(59,130,246,0.08)] mb-16">
          {/* Browser bar */}
          <div className="bg-[#0d1828] px-4 py-2.5 flex items-center gap-1.5 border-b border-[rgba(255,255,255,0.05)]">
            <span className="w-2.5 h-2.5 rounded-full bg-[#ef4444]" />
            <span className="w-2.5 h-2.5 rounded-full bg-[#f59e0b]" />
            <span className="w-2.5 h-2.5 rounded-full bg-[#22c55e]" />
            <span className="mx-auto font-mono text-[0.62rem] text-[rgba(255,255,255,0.20)] bg-[rgba(255,255,255,0.04)] px-8 py-0.5 rounded">localhost:5173/admin — JsonPages Studio</span>
          </div>
          {/* Split */}
          <div className="grid grid-cols-[1fr_300px] h-[520px] bg-[#060d1b]">
            {/* Stage */}
            <div className="flex flex-col overflow-hidden">
              {/* Tenant nav sim */}
              <div className="bg-[rgba(6,13,27,0.96)] px-6 py-3 flex items-center justify-between border-b border-[rgba(255,255,255,0.05)] flex-shrink-0">
                <div className="flex items-center gap-2 font-display font-bold text-[0.9rem] text-white">
                  <div className="w-5 h-5 bg-gradient-to-br from-[#3b82f6] to-[#22d3ee] rounded flex items-center justify-center font-mono text-[0.45rem] text-white font-bold">{'{}'}</div>
                  Json<span className="text-[#60a5fa]">Pages</span>
                </div>
                <div className="flex gap-6 text-[0.68rem] text-[#475569] font-sans">
                  <span>Architecture</span><span>CMS</span><span>Versioning</span><span>Developer</span>
                </div>
              </div>
              {/* Hero section — selected */}
              <div className="flex-1 relative p-8 flex flex-col justify-center bg-gradient-to-br from-[#04090f] to-[#071320] outline outline-2 outline-[#3b82f6] -outline-offset-2">
                <span className="absolute top-2.5 right-2.5 font-mono text-[0.5rem] font-bold uppercase tracking-widest bg-[#3b82f6] text-white px-2 py-0.5">HERO | LOCAL</span>
                <div className="font-display font-black text-[2.4rem] leading-none text-white mb-0.5">The Sovereign Shell.</div>
                <div className="font-display font-black text-[2.4rem] leading-none bg-gradient-to-r from-[#60a5fa] to-[#22d3ee] bg-clip-text text-transparent mb-4">Zero Runtime Overhead.</div>
                <p className="text-[0.75rem] text-[#475569] leading-[1.65] max-w-[360px] mb-5">The @jsonpages/core package is a headless, schema-driven runtime. It handles routing, hydration, and the admin interface.</p>
                <div className="flex gap-2">
                  <span className="text-[0.65rem] font-semibold bg-[#3b82f6] text-white px-3.5 py-1.5 rounded-[5px]">Read the Docs</span>
                  <span className="text-[0.65rem] border border-[rgba(255,255,255,0.15)] text-[#94a3b8] px-3.5 py-1.5 rounded-[5px]">View on NPM</span>
                </div>
              </div>
              {/* Next section visible but dimmed */}
              <div className="flex-shrink-0 px-6 py-4 bg-[#0a1628] border-t border-[rgba(255,255,255,0.05)] flex gap-3 opacity-40">
                {['The Form Factory', 'The Tenant Protocol', 'The Core Engine'].map((t) => (
                  <div key={t} className="flex-1 bg-[rgba(255,255,255,0.02)] border border-[rgba(255,255,255,0.05)] rounded p-2.5">
                    <div className="w-3.5 h-3.5 rounded bg-[rgba(59,130,246,0.15)] mb-1.5" />
                    <div className="font-display font-bold text-[0.58rem] text-[#94a3b8]">{t}</div>
                  </div>
                ))}
              </div>
            </div>
            {/* Inspector */}
            <div className="bg-[#08121f] border-l border-[rgba(255,255,255,0.06)] flex flex-col overflow-hidden">
              <div className="px-4 py-3 border-b border-[rgba(255,255,255,0.05)] flex items-start justify-between">
                <div>
                  <div className="font-display font-bold text-[0.88rem] text-white">Inspector</div>
                  <div className="flex items-center gap-1.5 mt-0.5 font-mono text-[0.56rem] text-[#3b82f6]">
                    <span className="font-bold">■ HERO</span>
                    <span className="text-[#1e3a5f]">|</span>
                    <span className="text-[#334155]">LOCAL</span>
                  </div>
                </div>
                <span className="font-mono text-[0.58rem] text-[#3b82f6]">+ Add section</span>
              </div>
              {/* Layers */}
              <div className="border-b border-[rgba(255,255,255,0.05)]">
                <div className="px-4 py-1.5 font-mono text-[0.54rem] uppercase tracking-widest text-[#1e3a5f] flex justify-between">
                  <span>Page Layers</span><span className="text-[#334155]">(8)</span>
                </div>
                {[
                  { type: 'HERO',  label: 'The Sovereign Shell.',    active: true,  opacity: '' },
                  { type: 'SOC',   label: 'Separation of Concerns',  active: false, opacity: 'opacity-55' },
                  { type: 'GIT',   label: 'Your content is code.',   active: false, opacity: 'opacity-45' },
                  { type: 'DEVEX', label: 'App.tsx is incredibly thin.', active: false, opacity: 'opacity-35' },
                ].map(({ type, label, active, opacity }) => (
                  <div key={type} className={`flex items-center gap-2 px-4 py-1.5 ${active ? 'bg-[rgba(59,130,246,0.08)]' : ''} ${opacity}`}>
                    <span className="text-[#1e3a5f] text-[0.58rem]">⠿</span>
                    <span className={`font-mono text-[0.52rem] uppercase tracking-wide w-10 flex-shrink-0 ${active ? 'text-[#3b82f6]' : 'text-[#1e3a5f]'}`}>{type}</span>
                    <span className={`font-sans text-[0.65rem] flex-1 truncate ${active ? 'text-[#e2e8f0] font-semibold' : 'text-[#475569]'}`}>{label}</span>
                    <span className={`w-1.5 h-1.5 rounded-full ${active ? 'bg-[#22c55e]' : 'bg-[#334155] opacity-40'}`} />
                  </div>
                ))}
              </div>
              {/* Context fields */}
              <div className="flex-1 px-4 py-3 flex flex-col gap-3 overflow-y-auto">
                {[
                  { label: 'Title',    val: 'The Sovereign Shell.',      active: true  },
                  { label: 'Subtitle', val: 'Zero Runtime Overhead.',    active: false },
                  { label: 'Badge',    val: 'Architecture v1.2',         active: false },
                ].map(({ label, val, active }) => (
                  <div key={label}>
                    <div className="font-mono text-[0.52rem] uppercase tracking-widest text-[#334155] mb-1">{label}</div>
                    <div className={`rounded px-2.5 py-1.5 font-mono text-[0.60rem] truncate ${active
                      ? 'bg-[rgba(59,130,246,0.05)] border border-[rgba(59,130,246,0.45)] text-[#e2e8f0]'
                      : 'bg-[rgba(255,255,255,0.03)] border border-[rgba(255,255,255,0.07)] text-[#94a3b8]'}`}
                    >{val}</div>
                  </div>
                ))}
                <div>
                  <div className="font-mono text-[0.52rem] uppercase tracking-widest text-[#334155] mb-1 flex justify-between">
                    <span>CTAs (2)</span><span className="text-[#3b82f6]">+ Add Item</span>
                  </div>
                  <div className="border border-[rgba(255,255,255,0.05)] rounded overflow-hidden">
                    {[{ lbl: 'Read the Docs', tag: 'primary' }, { lbl: 'View on NPM', tag: 'secondary' }].map(({ lbl, tag }) => (
                      <div key={lbl} className="flex items-center gap-1.5 px-2.5 py-1.5 border-b border-[rgba(255,255,255,0.04)] last:border-b-0">
                        <span className="text-[#3b82f6] text-[0.52rem]">▸</span>
                        <span className="font-sans text-[0.60rem] text-[#475569] flex-1">{lbl}</span>
                        <span className="font-mono text-[0.48rem] px-1 py-0.5 rounded bg-[rgba(59,130,246,0.08)] text-[#60a5fa]">{tag}</span>
                      </div>
                    ))}
                  </div>
                </div>
              </div>
              {/* Bottom bar */}
              <div className="px-4 py-2.5 border-t border-[rgba(255,255,255,0.05)] bg-[#060e1c] flex items-center gap-2">
                <span className="w-1.5 h-1.5 rounded-full bg-[#22c55e]" />
                <span className="font-mono text-[0.52rem] text-[#475569]">All Changes Saved</span>
                <div className="flex items-center gap-1.5 ml-1 font-mono text-[0.52rem] text-[#334155]">
                  <div className="w-5 h-2.5 bg-[#3b82f6] rounded-full relative flex-shrink-0">
                    <div className="absolute top-[1.5px] right-[1.5px] w-[9px] h-[9px] bg-white rounded-full" />
                  </div>
                  Autosave
                </div>
                <div className="ml-auto flex gap-1.5">
                  <span className="font-mono text-[0.50rem] px-1.5 py-0.5 rounded border border-[rgba(59,130,246,0.3)] bg-[rgba(59,130,246,0.12)] text-[#60a5fa] flex items-center gap-1">⬡ HTML</span>
                  <span className="font-mono text-[0.50rem] px-1.5 py-0.5 rounded border border-[rgba(255,255,255,0.08)] bg-[rgba(255,255,255,0.03)] text-[#94a3b8] opacity-50">{'{}'} JSON</span>
                </div>
              </div>
            </div>
          </div>
        </div>

        {/* Callouts */}
        {data.callouts && data.callouts.length > 0 && (
          <div className="grid grid-cols-3 gap-6">
            {data.callouts.map((c, idx) => (
              <div
                key={c.id ?? idx}
                className="border border-[rgba(255,255,255,0.06)] rounded-[12px] p-8 bg-[rgba(255,255,255,0.015)] hover:border-[rgba(59,130,246,0.2)] hover:bg-[rgba(59,130,246,0.03)] transition-all duration-200"
                data-jp-item-id={c.id ?? `legacy-${idx}`}
                data-jp-item-field="callouts"
              >
                <div className="w-9 h-9 rounded-[8px] bg-[rgba(59,130,246,0.10)] flex items-center justify-center text-[1.1rem] mb-4">
                  {c.icon}
                </div>
                <h4 className="font-display font-bold text-[1.05rem] text-[var(--local-text)] mb-2">{c.title}</h4>
                <p className="text-[0.88rem] text-[var(--local-text-muted)] leading-[1.7]">{c.description}</p>
              </div>
            ))}
          </div>
        )}
      </div>
    </section>
  );
};

END_OF_FILE_CONTENT
echo "Creating src/components/cms-ice/index.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/cms-ice/index.ts"
export * from './View';
export * from './schema';
export * from './types';

END_OF_FILE_CONTENT
echo "Creating src/components/cms-ice/schema.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/cms-ice/schema.ts"
import { z } from 'zod';
import { BaseSectionData, BaseArrayItem } from '@/lib/base-schemas';

const CalloutSchema = BaseArrayItem.extend({
  icon:        z.string().describe('ui:text'),
  title:       z.string().describe('ui:text'),
  description: z.string().describe('ui:textarea'),
});

export const CmsIceSchema = BaseSectionData.extend({
  label:       z.string().optional().describe('ui:text'),
  title:       z.string().describe('ui:text'),
  description: z.string().optional().describe('ui:textarea'),
  callouts:    z.array(CalloutSchema).optional().describe('ui:list'),
});

END_OF_FILE_CONTENT
echo "Creating src/components/cms-ice/types.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/cms-ice/types.ts"
import { z } from 'zod';
import { BaseSectionSettingsSchema } from '@/lib/base-schemas';
import { CmsIceSchema } from './schema';

export type CmsIceData     = z.infer<typeof CmsIceSchema>;
export type CmsIceSettings = z.infer<typeof BaseSectionSettingsSchema>;

END_OF_FILE_CONTENT
mkdir -p "src/components/code-block"
echo "Creating src/components/code-block/View.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/code-block/View.tsx"
import React from 'react';
import { cn } from '@/lib/utils';
import { Icon } from '@/lib/IconResolver';
import type { CodeBlockData, CodeBlockSettings } from './types';

export const CodeBlock: React.FC<{ data: CodeBlockData; settings?: CodeBlockSettings }> = ({ data, settings }) => {
  const showLineNumbers = settings?.showLineNumbers ?? true;

  return (
    <section
      style={{
        '--local-surface': 'var(--card)',
        '--local-text-muted': 'var(--muted-foreground)',
        '--local-bg': 'var(--background)',
        '--local-border': 'var(--border)',
        '--local-text': 'var(--foreground)',
        '--local-accent': 'var(--primary)',
        '--local-radius-lg': 'var(--radius)',
      } as React.CSSProperties}
      className="py-16 bg-[var(--local-surface)]"
    >
      <div className="container mx-auto px-6 max-w-4xl">
        {data.label && (
          <div className="flex items-center gap-2 text-xs font-semibold uppercase tracking-wider text-[var(--local-text-muted)] mb-4" data-jp-field="label">
            <Icon name="terminal" size={14} />
            <span>{data.label}</span>
          </div>
        )}
        <div className="rounded-[var(--local-radius-lg)] bg-[var(--local-bg)] border border-[var(--local-border)] overflow-hidden">
          <div className="p-6 font-mono text-sm overflow-x-auto">
            {data.lines.map((line, idx) => (
              <div key={idx} className="flex items-start gap-4 py-1" data-jp-item-id={(line as { id?: string }).id ?? `legacy-${idx}`} data-jp-item-field="lines">
                {showLineNumbers && (
                  <span className="select-none w-6 text-right text-[var(--local-text-muted)]/50">
                    {idx + 1}
                  </span>
                )}
                <span
                  className={cn(
                    line.isComment
                      ? 'text-[var(--local-text-muted)]/60'
                      : 'text-[var(--local-text)]'
                  )}
                >
                  {!line.isComment && (
                    <span className="text-[var(--local-accent)] mr-2">$</span>
                  )}
                  {line.content}
                </span>
              </div>
            ))}
          </div>
        </div>
      </div>
    </section>
  );
};

END_OF_FILE_CONTENT
echo "Creating src/components/code-block/index.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/code-block/index.ts"
export * from './View';
export * from './schema';
export * from './types';

END_OF_FILE_CONTENT
echo "Creating src/components/code-block/schema.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/code-block/schema.ts"
import { z } from 'zod';
import { BaseSectionData } from '@/lib/base-schemas';

export const LegacyCodeLineSchema = z.object({
  content: z.string().describe('ui:text'),
  isComment: z.boolean().default(false).describe('ui:checkbox'),
});

export const CodeBlockSchema = BaseSectionData.extend({
  label: z.string().optional().describe('ui:text'),
  lines: z.array(LegacyCodeLineSchema).describe('ui:list'),
});

export const CodeBlockSettingsSchema = z.object({
  showLineNumbers: z.boolean().optional().describe('ui:checkbox'),
});

END_OF_FILE_CONTENT
echo "Creating src/components/code-block/types.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/code-block/types.ts"
import { z } from 'zod';
import { BaseSectionSettingsSchema } from '@/lib/base-schemas';
import { CodeBlockSchema, CodeBlockSettingsSchema } from './schema';

export type CodeBlockData = z.infer<typeof CodeBlockSchema>;
export type CodeBlockSettings = z.infer<typeof BaseSectionSettingsSchema> & z.infer<typeof CodeBlockSettingsSchema>;

END_OF_FILE_CONTENT
mkdir -p "src/components/cta-banner"
echo "Creating src/components/cta-banner/View.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/cta-banner/View.tsx"
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

END_OF_FILE_CONTENT
echo "Creating src/components/cta-banner/index.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/cta-banner/index.ts"
export * from './View';
export * from './schema';
export * from './types';

END_OF_FILE_CONTENT
echo "Creating src/components/cta-banner/schema.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/cta-banner/schema.ts"
import { z } from 'zod';
import { BaseSectionData, CtaSchema, ImageSelectionSchema } from '@/lib/base-schemas';

export const CtaBannerSchema = BaseSectionData.extend({
  label: z.string().optional().describe('ui:text'),
  title: z.string().describe('ui:text'),
  description: z.string().optional().describe('ui:textarea'),
  backgroundImage: ImageSelectionSchema.default({ url: '', alt: '' }),
  ctas: z.array(CtaSchema).optional().describe('ui:list'),
});

END_OF_FILE_CONTENT
echo "Creating src/components/cta-banner/types.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/cta-banner/types.ts"
import { z } from 'zod';
import { BaseSectionSettingsSchema } from '@/lib/base-schemas';
import { CtaBannerSchema } from './schema';

export type CtaBannerData = z.infer<typeof CtaBannerSchema>;
export type CtaBannerSettings = z.infer<typeof BaseSectionSettingsSchema>;

END_OF_FILE_CONTENT
mkdir -p "src/components/devex"
echo "Creating src/components/devex/View.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/devex/View.tsx"
import React from 'react';
import type { DevexData, DevexSettings } from './types';

// The App.tsx snippet is canonical product content — not editable copy.
const APP_TSX_LINES = [
  { t: 'cm',  c: '// Your App.tsx is incredibly thin.'                 },
  { t: 'pl',  c: ''                                                     },
  { t: 'kw',  c: "import { JsonPagesEngine } from '@jsonpages/core';"  },
  { t: 'kw',  c: "import { config } from './my-config';"               },
  { t: 'pl',  c: ''                                                     },
  { t: 'kw',  c: 'export default function App() {'                     },
  { t: 'cm',  c: '  // The Engine takes over from here'                },
  { t: 'fn',  c: '  return <JsonPagesEngine config={config} />;'       },
  { t: 'pl',  c: '}'                                                    },
] as const;

const tokenClass: Record<string, string> = {
  cm: 'text-[#5c6370] italic',
  kw: 'text-[#c678dd]',
  fn: 'text-[#61afef]',
  pl: 'text-[#cbd5e1]',
};

export const Devex: React.FC<{ data: DevexData; settings?: DevexSettings }> = ({ data }) => {
  return (
    <section
      style={{
        '--local-bg':         'var(--background)',
        '--local-text':       'var(--foreground)',
        '--local-text-muted': 'var(--muted-foreground)',
        '--local-primary':    'var(--primary)',
        '--local-accent':     'var(--color-accent, #60a5fa)',
        '--local-border':     'var(--border)',
      } as React.CSSProperties}
      className="relative z-0 py-28 bg-[var(--local-bg)]"
    >
      <div className="absolute top-0 left-0 right-0 h-px bg-gradient-to-r from-transparent via-[rgba(59,130,246,0.1)] to-transparent" />
      <div className="max-w-[1200px] mx-auto px-8 grid grid-cols-2 gap-24 items-center">

        {/* LEFT */}
        <div>
          {data.label && (
            <div className="jp-section-label inline-flex items-center gap-2 text-[0.68rem] font-mono font-bold uppercase tracking-[0.14em] text-[var(--local-accent)] mb-5" data-jp-field="label">
              <span className="w-6 h-px bg-[var(--local-primary)]" />
              {data.label}
            </div>
          )}
          <h2
            className="font-display text-[clamp(2rem,4.5vw,3.8rem)] font-black text-[var(--local-text)] leading-[1.05] tracking-tight mb-5"
            data-jp-field="title"
          >
            {data.title}
          </h2>
          {data.description && (
            <p className="text-[1.05rem] text-[var(--local-text-muted)] leading-[1.75] mb-8" data-jp-field="description">
              {data.description}
            </p>
          )}
          {data.features && data.features.length > 0 && (
            <ul className="flex flex-col">
              {data.features.map((f, idx) => (
                <li
                  key={f.id ?? idx}
                  className="flex items-center gap-3.5 text-[0.9rem] text-[var(--local-text-muted)] py-3.5 border-b border-[rgba(255,255,255,0.06)] last:border-b-0 hover:text-[var(--local-text)] hover:pl-1.5 transition-all"
                  data-jp-item-id={f.id ?? `legacy-${idx}`}
                  data-jp-item-field="features"
                >
                  <svg className="w-4 h-4 text-[#22c55e] flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
                  </svg>
                  {f.text}
                </li>
              ))}
            </ul>
          )}
        </div>

        {/* RIGHT — code window */}
        <div className="rounded-[12px] overflow-hidden border border-[rgba(255,255,255,0.10)] shadow-[0_30px_60px_rgba(0,0,0,0.5),0_0_40px_rgba(59,130,246,0.06)]">
          <div className="bg-[#0d1828] px-4 py-2.5 flex items-center gap-1.5 border-b border-[rgba(255,255,255,0.05)]">
            <span className="w-2.5 h-2.5 rounded-full bg-[#ef4444]" />
            <span className="w-2.5 h-2.5 rounded-full bg-[#f59e0b]" />
            <span className="w-2.5 h-2.5 rounded-full bg-[#22c55e]" />
            <span className="ml-auto font-mono text-[0.62rem] text-[rgba(255,255,255,0.25)]">src/App.tsx</span>
          </div>
          <div className="bg-[#030609] px-8 py-7 font-mono text-[0.80rem] leading-[2] overflow-x-auto">
            {APP_TSX_LINES.map((ln, i) => (
              <div key={i}>
                <span className={tokenClass[ln.t]}>{ln.c || '\u00A0'}</span>
              </div>
            ))}
          </div>
        </div>

      </div>
    </section>
  );
};

END_OF_FILE_CONTENT
echo "Creating src/components/devex/index.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/devex/index.ts"
export * from './View';
export * from './schema';
export * from './types';

END_OF_FILE_CONTENT
echo "Creating src/components/devex/schema.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/devex/schema.ts"
import { z } from 'zod';
import { BaseSectionData, BaseArrayItem } from '@/lib/base-schemas';

const FeatureSchema = BaseArrayItem.extend({
  text: z.string().describe('ui:text'),
});

export const DevexSchema = BaseSectionData.extend({
  label:       z.string().optional().describe('ui:text'),
  title:       z.string().describe('ui:text'),
  description: z.string().optional().describe('ui:textarea'),
  features:    z.array(FeatureSchema).optional().describe('ui:list'),
});

END_OF_FILE_CONTENT
echo "Creating src/components/devex/types.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/devex/types.ts"
import { z } from 'zod';
import { BaseSectionSettingsSchema } from '@/lib/base-schemas';
import { DevexSchema } from './schema';

export type DevexData     = z.infer<typeof DevexSchema>;
export type DevexSettings = z.infer<typeof BaseSectionSettingsSchema>;

END_OF_FILE_CONTENT
mkdir -p "src/components/docs-layout"
echo "Creating src/components/docs-layout/View.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/docs-layout/View.tsx"
import React, { useEffect, useRef, useState } from 'react';
import type { DocsLayoutData, DocsLayoutSettings } from './types';

type Block = DocsLayoutData['groups'][0]['sections'][0]['blocks'][0];

/* ── inline renderer: **bold** and `code` ─────────────────── */
function renderInline(text: string): React.ReactNode {
  return text.split(/(\*\*[^*]+\*\*|`[^`]+`)/g).map((part, i) => {
    if (part.startsWith('**') && part.endsWith('**')) return <strong key={i}>{part.slice(2, -2)}</strong>;
    if (part.startsWith('`')  && part.endsWith('`'))  return <code key={i}>{part.slice(1, -1)}</code>;
    return part;
  });
}

/* ── block renderer ───────────────────────────────────────── */
function DocBlock({ block, idx }: { block: Block; idx: number }) {
  const inlineCls = '[&_strong]:text-[var(--local-text)] [&_strong]:font-semibold [&_code]:font-mono [&_code]:text-[0.84em] [&_code]:bg-[rgba(255,255,255,0.07)] [&_code]:px-1.5 [&_code]:py-0.5 [&_code]:rounded-[3px] [&_code]:text-[var(--local-accent)]';

  switch (block.type) {
    case 'heading':
      return <h4 key={idx} className="font-display font-bold text-[1.05rem] text-[var(--local-text)] mt-8 mb-3 tracking-tight">{block.content}</h4>;

    case 'paragraph':
      return <p key={idx} className={`text-[0.93rem] text-[var(--local-text-muted)] leading-[1.9] mb-5 ${inlineCls}`}>{renderInline(block.content)}</p>;

    case 'code':
      return (
        <div key={idx} className="mb-6 rounded-[10px] overflow-hidden border border-[rgba(255,255,255,0.08)] shadow-[0_8px_32px_rgba(0,0,0,0.4)]">
          {block.codeFilename && (
            <div className="bg-[#0d1828] px-4 py-2.5 flex items-center gap-2 border-b border-[rgba(255,255,255,0.05)]">
              <span className="w-2.5 h-2.5 rounded-full bg-[#ef4444]" />
              <span className="w-2.5 h-2.5 rounded-full bg-[#f59e0b]" />
              <span className="w-2.5 h-2.5 rounded-full bg-[#22c55e]" />
              <span className="ml-3 font-mono text-[0.65rem] text-[rgba(255,255,255,0.28)]">{block.codeFilename}</span>
            </div>
          )}
          <pre className="bg-[#020508] px-6 py-5 font-mono text-[0.78rem] leading-[1.9] overflow-x-auto text-[#cbd5e1] m-0 whitespace-pre">
            <code>{block.content}</code>
          </pre>
        </div>
      );

    case 'list':
      return (
        <ul key={idx} className="mb-5 flex flex-col gap-2.5">
          {(block.items ?? []).map((item, i) => (
            <li key={item.id ?? i} className={`flex items-start gap-3 text-[0.93rem] text-[var(--local-text-muted)] leading-[1.8] ${inlineCls}`}>
              <span className="font-mono text-[var(--local-primary)] text-[0.72rem] flex-shrink-0 mt-[5px]">→</span>
              <span>{renderInline(item.text)}</span>
            </li>
          ))}
        </ul>
      );

    case 'table':
      return (
        <div key={idx} className="mb-6 overflow-hidden rounded-[10px] border border-[rgba(255,255,255,0.06)]">
          <table className="w-full text-[0.88rem]">
            <thead>
              <tr className="bg-[rgba(59,130,246,0.06)] border-b border-[rgba(255,255,255,0.06)]">
                <th className="px-5 py-3 text-left font-mono text-[0.66rem] uppercase tracking-widest text-[var(--local-accent)] w-[200px]">Cosa</th>
                <th className="px-5 py-3 text-left font-mono text-[0.66rem] uppercase tracking-widest text-[var(--local-accent)]">Azione</th>
              </tr>
            </thead>
            <tbody>
              {(block.rows ?? []).map((row, i) => (
                <tr key={row.id ?? i} className="border-b border-[rgba(255,255,255,0.04)] last:border-0 hover:bg-[rgba(59,130,246,0.025)] transition-colors">
                  <td className={`px-5 py-4 text-[var(--local-text)] font-semibold align-top text-[0.88rem] ${inlineCls}`}>
                    {renderInline(row.col1)}
                  </td>
                  <td className={`px-5 py-4 text-[var(--local-text-muted)] align-top leading-[1.75] text-[0.88rem] ${inlineCls}`}>
                    {renderInline(row.col2)}
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      );

    case 'callout':
      return (
        <div key={idx} className={`mb-5 rounded-[10px] border border-[rgba(59,130,246,0.22)] bg-[rgba(59,130,246,0.05)] px-5 py-4 ${inlineCls}`}>
          <div className="flex items-start gap-3">
            <span className="text-[var(--local-accent)] font-mono text-[0.9rem] flex-shrink-0 mt-0.5 leading-none">ℹ</span>
            <p className="text-[0.90rem] text-[var(--local-text-muted)] leading-[1.8] m-0">{renderInline(block.content)}</p>
          </div>
        </div>
      );

    case 'note':
      return (
        <div key={idx} className={`mb-5 rounded-[10px] border border-[rgba(239,68,68,0.20)] bg-[rgba(239,68,68,0.04)] px-5 py-4 ${inlineCls}`}>
          <div className="flex items-start gap-3">
            <span className="text-[#f87171] font-mono text-[0.9rem] flex-shrink-0 mt-0.5 leading-none">⚠</span>
            <p className="text-[0.90rem] text-[var(--local-text-muted)] leading-[1.8] m-0">{renderInline(block.content)}</p>
          </div>
        </div>
      );

    default: return null;
  }
}

/* ── main component ───────────────────────────────────────── */
export const DocsLayout: React.FC<{ data: DocsLayoutData; settings?: DocsLayoutSettings }> = ({ data }) => {
  const [activeAnchor, setActiveAnchor] = useState<string>('');
  const contentRef = useRef<HTMLDivElement>(null);

  // flat list of all anchors in order
  const allAnchors = data.groups.flatMap((g) => [
    { anchor: g.anchor, level: 'group' as const,   label: g.label },
    ...(g.sections ?? []).map((s) => ({ anchor: s.anchor, level: 'section' as const, label: s.title, parent: g.anchor })),
  ]);

  useEffect(() => {
    const targets = allAnchors
      .map((a) => document.getElementById(a.anchor))
      .filter(Boolean) as HTMLElement[];
    if (!targets.length) return;

    const observer = new IntersectionObserver(
      (entries) => {
        const visible = entries.filter((e) => e.isIntersecting);
        if (!visible.length) return;
        const top = visible.reduce((a, b) =>
          a.boundingClientRect.top < b.boundingClientRect.top ? a : b
        );
        setActiveAnchor((top.target as HTMLElement).id);
      },
      { rootMargin: '-64px 0px -55% 0px', threshold: 0 }
    );
    targets.forEach((t) => observer.observe(t));
    return () => observer.disconnect();
  }, [data.groups]);

  const scrollTo = (anchor: string) => (e: React.MouseEvent) => {
    e.preventDefault();
    document.getElementById(anchor)?.scrollIntoView({ behavior: 'smooth', block: 'start' });
  };

  return (
    <section
      style={{
        '--local-bg':         'var(--background)',
        '--local-text':       'var(--foreground)',
        '--local-text-muted': 'var(--muted-foreground)',
        '--local-primary':    'var(--primary)',
        '--local-accent':     'var(--color-accent, #60a5fa)',
        '--local-cyan':       'var(--color-secondary, #22d3ee)',
        '--local-border':     'var(--border)',
        '--local-surface':    'var(--card)',
      } as React.CSSProperties}
      className="relative z-0 min-h-screen bg-[var(--local-bg)]"
    >
      <div className="absolute top-0 left-0 right-0 h-px bg-gradient-to-r from-transparent via-[rgba(59,130,246,0.15)] to-transparent" />

      {/* ── Page hero ──────────────────────────────────── */}
      <div className="max-w-[1200px] mx-auto px-8 pt-28 pb-12">
        <div
          className="inline-flex items-center gap-2 bg-[rgba(59,130,246,0.08)] border border-[rgba(59,130,246,0.18)] px-3.5 py-1 rounded-full font-mono text-[0.66rem] font-semibold text-[var(--local-accent)] mb-5 tracking-widest uppercase"
          data-jp-field="version"
        >
          <span className="w-1.5 h-1.5 rounded-full bg-[#22c55e]" />
          {data.version ?? 'v1.2'}
        </div>
        <h1
          className="font-display font-black text-[clamp(2.2rem,4vw,3.5rem)] text-[var(--local-text)] leading-[1.05] tracking-tight mb-4"
          data-jp-field="pageTitle"
        >
          {data.pageTitle}
        </h1>
        {data.pageSubtitle && (
          <p
            className="text-[1.02rem] text-[var(--local-text-muted)] max-w-[680px] leading-[1.85]"
            data-jp-field="pageSubtitle"
          >
            {data.pageSubtitle}
          </p>
        )}
        <div className="mt-8 h-px bg-gradient-to-r from-[rgba(59,130,246,0.3)] via-[rgba(59,130,246,0.06)] to-transparent" />
      </div>

      {/* ── Sidebar + Content ──────────────────────────── */}
      <div className="max-w-[1200px] mx-auto px-8 pb-40 flex gap-14 items-start">

        {/* SIDEBAR */}
        <aside className="w-[216px] flex-shrink-0 sticky top-[80px] self-start">
          <nav className="flex flex-col">
            {data.groups.map((group) => {
              const groupActive = activeAnchor === group.anchor ||
                (group.sections ?? []).some((s) => s.anchor === activeAnchor);
              return (
                <div key={group.anchor} className="mb-0.5">
                  {/* Group */}
                  <a
                    href={`#${group.anchor}`}
                    onClick={scrollTo(group.anchor)}
                    className={`
                      flex items-center gap-2 px-3 py-2 rounded-[6px] font-display font-bold text-[0.80rem]
                      transition-all duration-150 no-underline
                      ${groupActive
                        ? 'text-[var(--local-text)] bg-[rgba(255,255,255,0.04)]'
                        : 'text-[var(--local-text-muted)] hover:text-[var(--local-text)] hover:bg-[rgba(255,255,255,0.03)]'}
                      ${activeAnchor === group.anchor ? 'border-l-2 border-[var(--local-primary)] pl-[10px] text-[var(--local-accent)]' : ''}
                    `}
                  >
                    {group.label}
                  </a>
                  {/* Sub-sections */}
                  <div className={`overflow-hidden transition-all duration-200 ${groupActive ? 'max-h-96' : 'max-h-0'}`}>
                    {(group.sections ?? []).map((s) => (
                      <a
                        key={s.anchor}
                        href={`#${s.anchor}`}
                        onClick={scrollTo(s.anchor)}
                        className={`
                          flex items-center gap-2.5 pl-[22px] pr-3 py-1.5 rounded-[5px]
                          font-sans text-[0.76rem] transition-all duration-120 no-underline ml-0.5
                          ${activeAnchor === s.anchor
                            ? 'text-[var(--local-accent)] font-semibold bg-[rgba(59,130,246,0.07)]'
                            : 'text-[var(--local-text-muted)] hover:text-[var(--local-text)] hover:bg-[rgba(255,255,255,0.025)]'}
                        `}
                      >
                        <span className={`w-[5px] h-[5px] rounded-full flex-shrink-0 transition-colors ${activeAnchor === s.anchor ? 'bg-[var(--local-accent)]' : 'bg-[rgba(255,255,255,0.12)]'}`} />
                        {s.title}
                      </a>
                    ))}
                  </div>
                </div>
              );
            })}
          </nav>

          {/* Divider + back to top */}
          <div className="mt-6 pt-5 border-t border-[rgba(255,255,255,0.05)]">
            <button
              onClick={() => window.scrollTo({ top: 0, behavior: 'smooth' })}
              className="flex items-center gap-2 font-mono text-[0.62rem] uppercase tracking-widest text-[var(--local-text-muted)] hover:text-[var(--local-accent)] transition-colors px-3"
            >
              ↑ Back to top
            </button>
          </div>
        </aside>

        {/* CONTENT */}
        <div ref={contentRef} className="flex-1 min-w-0 pt-2">
          {data.groups.map((group, gi) => (
            <div key={group.anchor} className={gi > 0 ? 'mt-20' : ''}>

              {/* Group header */}
              <div id={group.anchor} className="scroll-mt-[88px] flex items-center gap-3 mb-2">
                <div className="w-7 h-7 rounded-[7px] bg-[rgba(59,130,246,0.12)] border border-[rgba(59,130,246,0.18)] flex items-center justify-center flex-shrink-0">
                  <span className="font-mono text-[var(--local-accent)] text-[0.66rem] font-bold">{gi + 1}</span>
                </div>
                <h2
                  className="font-display font-black text-[1.55rem] text-[var(--local-text)] tracking-tight"
                  data-jp-item-id={group.id ?? `g-${gi}`}
                  data-jp-item-field="groups"
                >
                  {group.label}
                </h2>
              </div>
              <div className="h-px bg-[rgba(255,255,255,0.05)] mb-10 ml-10" />

              {/* Sections */}
              {(group.sections ?? []).map((section, si) => (
                <div
                  key={section.anchor}
                  id={section.anchor}
                  className="scroll-mt-[88px] mb-14"
                  data-jp-item-id={section.id ?? `s-${gi}-${si}`}
                  data-jp-item-field="sections"
                >
                  {/* Section title */}
                  <div className="flex items-center gap-2.5 mb-6">
                    {section.tag && (
                      <span className="font-mono text-[0.60rem] uppercase tracking-widest text-[var(--local-accent)] bg-[rgba(59,130,246,0.08)] border border-[rgba(59,130,246,0.15)] px-2 py-0.5 rounded-[4px] flex-shrink-0">
                        {section.tag}
                      </span>
                    )}
                    <h3
                      className="font-display font-bold text-[1.2rem] text-[var(--local-text)] leading-tight tracking-tight"
                      data-jp-field="title"
                    >
                      {section.title}
                    </h3>
                  </div>

                  {/* Blocks */}
                  {(section.blocks ?? []).map((block, bi) => (
                    <DocBlock key={block.id ?? bi} block={block} idx={bi} />
                  ))}

                  {/* Section divider */}
                  {si < (group.sections ?? []).length - 1 && (
                    <div className="mt-12 h-px bg-[rgba(255,255,255,0.035)]" />
                  )}
                </div>
              ))}
            </div>
          ))}

          {/* EOF marker */}
          <div className="mt-16 flex items-center gap-4 opacity-30">
            <div className="flex-1 h-px bg-[rgba(255,255,255,0.08)]" />
            <span className="font-mono text-[0.60rem] uppercase tracking-widest text-[var(--local-text-muted)]">End of document</span>
            <div className="flex-1 h-px bg-[rgba(255,255,255,0.08)]" />
          </div>
        </div>

      </div>
    </section>
  );
};

END_OF_FILE_CONTENT
echo "Creating src/components/docs-layout/index.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/docs-layout/index.ts"
export * from './View';
export * from './schema';
export * from './types';

END_OF_FILE_CONTENT
echo "Creating src/components/docs-layout/schema.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/docs-layout/schema.ts"
import { z } from 'zod';
import { BaseSectionData, BaseArrayItem } from '@/lib/base-schemas';

const DocBlockSchema = BaseArrayItem.extend({
  type:         z.enum(['paragraph', 'code', 'list', 'table', 'callout', 'note', 'heading']).default('paragraph'),
  content:      z.string().describe('ui:textarea'),
  codeFilename: z.string().optional().describe('ui:text'),
  items: z.array(z.object({ id: z.string().optional(), text: z.string() })).optional().describe('ui:list'),
  rows:  z.array(z.object({ id: z.string().optional(), col1: z.string(), col2: z.string() })).optional().describe('ui:list'),
});

const DocSectionSchema = BaseArrayItem.extend({
  anchor:  z.string().describe('ui:text'),
  title:   z.string().describe('ui:text'),
  tag:     z.string().optional().describe('ui:text'),
  blocks:  z.array(DocBlockSchema).describe('ui:list'),
});

const DocGroupSchema = BaseArrayItem.extend({
  anchor:   z.string().describe('ui:text'),
  label:    z.string().describe('ui:text'),
  sections: z.array(DocSectionSchema).describe('ui:list'),
});

export const DocsLayoutSchema = BaseSectionData.extend({
  pageTitle:    z.string().describe('ui:text'),
  pageSubtitle: z.string().optional().describe('ui:textarea'),
  version:      z.string().optional().describe('ui:text'),
  groups:       z.array(DocGroupSchema).describe('ui:list'),
});

END_OF_FILE_CONTENT
echo "Creating src/components/docs-layout/types.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/docs-layout/types.ts"
import { z } from 'zod';
import { BaseSectionSettingsSchema } from '@/lib/base-schemas';
import { DocsLayoutSchema } from './schema';

export type DocsLayoutData     = z.infer<typeof DocsLayoutSchema>;
export type DocsLayoutSettings = z.infer<typeof BaseSectionSettingsSchema>;

END_OF_FILE_CONTENT
mkdir -p "src/components/feature-grid"
echo "Creating src/components/feature-grid/View.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/feature-grid/View.tsx"
import React from 'react';
import { cn } from '@/lib/utils';
import { Icon } from '@/lib/IconResolver';
import type { FeatureGridData, FeatureGridSettings } from './types';

const columnsMap: Record<2 | 3 | 4, string> = {
  2: 'md:grid-cols-2',
  3: 'md:grid-cols-3',
  4: 'md:grid-cols-4',
};

export const FeatureGrid: React.FC<{ data: FeatureGridData; settings?: FeatureGridSettings }> = ({ data, settings }) => {
  const colKey = settings?.columns ?? 3;
  const cols = (colKey === 2 || colKey === 3 || colKey === 4) ? columnsMap[colKey] : columnsMap[3];
  const isBordered = settings?.cardStyle === 'bordered';

  const localStyles = {
    '--local-bg': 'var(--background)',
    '--local-text': 'var(--foreground)',
    '--local-text-muted': 'var(--muted-foreground)',
    '--local-surface': 'var(--card)',
    '--local-surface-alt': 'var(--muted)',
    '--local-border': 'var(--border)',
    '--local-radius-lg': 'var(--radius)',
    '--local-radius-md': 'calc(var(--radius) - 2px)',
  } as React.CSSProperties;

  return (
    <section style={localStyles} className="py-24 bg-[var(--local-bg)] relative z-0">
      <div className="max-w-[1200px] mx-auto px-8">
        <h2
          className="font-display text-[clamp(2rem,4vw,3rem)] font-extrabold text-center text-[var(--local-text)] mb-16 tracking-tight"
          data-jp-field="sectionTitle"
        >
          {data.sectionTitle}
        </h2>
        <div className={cn('grid grid-cols-1 gap-6', cols)}>
          {data.cards.map((card, idx) => (
            <div
              key={card.id ?? idx}
              className={cn(
                'p-8 rounded-[var(--local-radius-lg)] bg-[var(--local-surface)]',
                isBordered && 'border border-[var(--local-border)]'
              )}
              data-jp-item-id={card.id ?? `legacy-${idx}`}
              data-jp-item-field="cards"
            >
              {card.icon && (
                <div className="w-10 h-10 rounded-[var(--local-radius-md)] bg-[var(--local-surface-alt)] flex items-center justify-center mb-4">
                  <Icon name={card.icon} size={20} className="text-[var(--local-text-muted)]" />
                </div>
              )}
              <h3 className="text-lg font-semibold text-[var(--local-text)] mb-2">
                {card.emoji && <span className="mr-2">{card.emoji}</span>}
                {card.title}
              </h3>
              <p className="text-sm text-[var(--local-text-muted)] leading-relaxed">
                {card.description}
              </p>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
};

END_OF_FILE_CONTENT
echo "Creating src/components/feature-grid/index.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/feature-grid/index.ts"
export * from './View';
export * from './schema';
export * from './types';

END_OF_FILE_CONTENT
echo "Creating src/components/feature-grid/schema.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/feature-grid/schema.ts"
import { z } from 'zod';
import { BaseSectionData, BaseArrayItem } from '@/lib/base-schemas';

export const FeatureCardSchema = BaseArrayItem.extend({
  icon: z.string().optional().describe('ui:icon-picker'),
  emoji: z.string().optional().describe('ui:text'),
  title: z.string().describe('ui:text'),
  description: z.string().describe('ui:textarea'),
});

export const FeatureGridSchema = BaseSectionData.extend({
  sectionTitle: z.string().describe('ui:text'),
  cards: z.array(FeatureCardSchema).describe('ui:list'),
});

export const FeatureGridSettingsSchema = z.object({
  columns: z.union([z.literal(2), z.literal(3), z.literal(4)]).optional().describe('ui:number'),
  cardStyle: z.enum(['plain', 'bordered']).optional().describe('ui:select'),
});

END_OF_FILE_CONTENT
echo "Creating src/components/feature-grid/types.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/feature-grid/types.ts"
import { z } from 'zod';
import { BaseSectionSettingsSchema } from '@/lib/base-schemas';
import { FeatureGridSchema, FeatureGridSettingsSchema } from './schema';

export type FeatureGridData = z.infer<typeof FeatureGridSchema>;
export type FeatureGridSettings = z.infer<typeof BaseSectionSettingsSchema> & z.infer<typeof FeatureGridSettingsSchema>;

END_OF_FILE_CONTENT
mkdir -p "src/components/footer"
echo "Creating src/components/footer/View.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/footer/View.tsx"
import React from 'react';
import type { FooterData, FooterSettings } from './types';

export const Footer: React.FC<{ data: FooterData; settings?: FooterSettings }> = ({ data }) => {
  return (
    <footer
      style={{
        '--local-bg': 'var(--background)',
        '--local-text': 'var(--foreground)',
        '--local-text-muted': 'var(--muted-foreground)',
        '--local-accent': 'var(--color-accent, #c8a06e)',
        '--local-border': 'var(--border)',
      } as React.CSSProperties}
      className="py-12 border-t border-[var(--local-border)] bg-[var(--local-bg)] relative z-0"
    >
      <div className="max-w-[1200px] mx-auto px-8">
        <div className="flex flex-col md:flex-row items-center justify-between gap-4">
          <div className="flex items-center gap-2 font-display font-bold text-[0.9rem] text-[var(--local-text)]" data-jp-field="brandText">
            {data.brandText}
            {data.brandHighlight && (
              <span className="text-[var(--local-accent)]" data-jp-field="brandHighlight">{data.brandHighlight}</span>
            )}
          </div>
          {data.links && data.links.length > 0 && (
            <nav className="flex gap-6">
              {data.links.map((link, idx) => (
                <a
                  key={idx}
                  href={link.href}
                  className="text-[0.82rem] text-[var(--local-text-muted)] hover:text-[var(--local-accent)] transition-colors no-underline"
                  data-jp-item-id={(link as { id?: string }).id ?? `legacy-${idx}`}
                  data-jp-item-field="links"
                >
                  {link.label}
                </a>
              ))}
            </nav>
          )}
          <div className="text-[0.8rem] text-[var(--local-text-muted)] opacity-60" data-jp-field="copyright">
            {data.copyright}
          </div>
        </div>
      </div>
    </footer>
  );
};

END_OF_FILE_CONTENT
echo "Creating src/components/footer/index.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/footer/index.ts"
export * from './View';
export * from './schema';
export * from './types';

END_OF_FILE_CONTENT
echo "Creating src/components/footer/schema.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/footer/schema.ts"
import { z } from 'zod';

export const FooterSchema = z.object({
  brandText: z.string().describe('ui:text'),
  brandHighlight: z.string().optional().describe('ui:text'),
  copyright: z.string().describe('ui:text'),
  links: z.array(z.object({
    label: z.string().describe('ui:text'),
    href: z.string().describe('ui:text'),
  })).optional().describe('ui:list'),
});

export const FooterSettingsSchema = z.object({
  showLogo: z.boolean().optional().describe('ui:checkbox'),
});

END_OF_FILE_CONTENT
echo "Creating src/components/footer/types.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/footer/types.ts"
import { z } from 'zod';
import { FooterSchema, FooterSettingsSchema } from './schema';

export type FooterData = z.infer<typeof FooterSchema>;
export type FooterSettings = z.infer<typeof FooterSettingsSchema>;

END_OF_FILE_CONTENT
mkdir -p "src/components/git-section"
echo "Creating src/components/git-section/View.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/git-section/View.tsx"
import React from 'react';
import type { GitSectionData, GitSectionSettings } from './types';

export const GitSection: React.FC<{ data: GitSectionData; settings?: GitSectionSettings }> = ({ data }) => {
  return (
    <section
      style={{
        '--local-bg':         'var(--card)',
        '--local-text':       'var(--foreground)',
        '--local-text-muted': 'var(--muted-foreground)',
        '--local-primary':    'var(--primary)',
        '--local-accent':     'var(--color-accent, #60a5fa)',
        '--local-cyan':       'var(--color-secondary, #22d3ee)',
        '--local-border':     'var(--border)',
      } as React.CSSProperties}
      className="relative z-0 py-28 bg-[var(--local-bg)]"
    >
      <div className="absolute top-0 left-0 right-0 h-px bg-gradient-to-r from-transparent via-[rgba(59,130,246,0.1)] to-transparent" />
      <div className="max-w-[1200px] mx-auto px-8 grid grid-cols-2 gap-24 items-center">

        {/* LEFT — copy */}
        <div>
          {data.label && (
            <div className="jp-section-label inline-flex items-center gap-2 text-[0.68rem] font-mono font-bold uppercase tracking-[0.14em] text-[var(--local-accent)] mb-5" data-jp-field="label">
              <span className="w-6 h-px bg-[var(--local-primary)]" />
              {data.label}
            </div>
          )}
          <h2 className="font-display text-[clamp(2rem,4.5vw,3.8rem)] font-black text-[var(--local-text)] leading-[1.05] tracking-tight mb-4" data-jp-field="title">
            {data.title}
            {data.titleHighlight && (
              <>
                <br />
                <em className="not-italic bg-gradient-to-br from-[var(--local-accent)] to-[var(--local-cyan)] bg-clip-text text-transparent" data-jp-field="titleHighlight">
                  {data.titleHighlight}
                </em>
              </>
            )}
          </h2>
          {data.description && (
            <p className="text-[1.05rem] text-[var(--local-text-muted)] leading-[1.8] mb-8" data-jp-field="description">
              {data.description}
            </p>
          )}
          {data.points && data.points.length > 0 && (
            <ul className="flex flex-col">
              {data.points.map((p, idx) => (
                <li
                  key={p.id ?? idx}
                  className="flex items-start gap-3.5 text-[0.9rem] text-[var(--local-text-muted)] py-3.5 border-b border-[rgba(255,255,255,0.06)] last:border-b-0 hover:text-[var(--local-text)] transition-colors leading-[1.5]"
                  data-jp-item-id={p.id ?? `legacy-${idx}`}
                  data-jp-item-field="points"
                >
                  <span className="font-mono text-[var(--local-primary)] text-[0.75rem] flex-shrink-0 mt-0.5">→</span>
                  {p.text}
                </li>
              ))}
            </ul>
          )}
        </div>

        {/* RIGHT — git diff panel (decorative, content-driven commits) */}
        <div className="rounded-[12px] overflow-hidden border border-[rgba(255,255,255,0.10)] shadow-[0_30px_60px_rgba(0,0,0,0.5)]">
          <div className="bg-[#0d1828] px-4 py-2.5 flex items-center gap-1.5 border-b border-[rgba(255,255,255,0.05)]">
            <span className="w-2.5 h-2.5 rounded-full bg-[#ef4444]" />
            <span className="w-2.5 h-2.5 rounded-full bg-[#f59e0b]" />
            <span className="w-2.5 h-2.5 rounded-full bg-[#22c55e]" />
            <span className="ml-auto font-mono text-[0.62rem] text-[rgba(255,255,255,0.25)]">src/data/pages/home.json</span>
          </div>
          {/* Tabs */}
          <div className="bg-[#0a1624] border-b border-[rgba(255,255,255,0.05)] flex">
            <div className="font-mono text-[0.60rem] px-4 py-2 text-white border-b-2 border-[#3b82f6]">Changes</div>
            <div className="font-mono text-[0.60rem] px-4 py-2 text-[#475569]">History</div>
            <div className="font-mono text-[0.60rem] px-4 py-2 text-[#475569]">Blame</div>
          </div>
          {/* Diff */}
          <div className="bg-[#030609] px-4 py-4 font-mono text-[0.73rem] leading-[1.9] overflow-x-auto">
            {[
              { t: 'ctx', g: '12', s: ' ', c: '  "type": "hero",'                                },
              { t: 'ctx', g: '13', s: ' ', c: '  "data": {'                                       },
              { t: 'del', g: '14', s: '-', c: '    "title": "Local Authoring.hh",'                },
              { t: 'add', g: '14', s: '+', c: '    "title": "The Sovereign Shell.",'              },
              { t: 'del', g: '15', s: '-', c: '    "titleHighlight": "Global Governance.",'       },
              { t: 'add', g: '15', s: '+', c: '    "titleHighlight": "Zero Runtime Overhead.",'   },
              { t: 'ctx', g: '16', s: ' ', c: '    "badge": "Architecture v1.2",'                },
              { t: 'ctx', g: '17', s: ' ', c: '  }'                                               },
            ].map((ln, i) => (
              <div key={i} className={`flex gap-3 px-1 rounded-[2px] ${
                ln.t === 'add' ? 'bg-[rgba(34,197,94,0.07)]' :
                ln.t === 'del' ? 'bg-[rgba(239,68,68,0.07)]' :
                'opacity-45'}`}
              >
                <span className="text-[#334155] min-w-[18px] text-right select-none">{ln.g}</span>
                <span className={`min-w-[12px] ${ln.t === 'add' ? 'text-[#22c55e]' : ln.t === 'del' ? 'text-[#ef4444]' : 'text-[#334155]'}`}>{ln.s}</span>
                <span className={`whitespace-pre ${ln.t === 'add' ? 'text-[#86efac]' : ln.t === 'del' ? 'text-[#fca5a5]' : 'text-[#cbd5e1]'}`}>{ln.c}</span>
              </div>
            ))}
          </div>
          {/* Commits */}
          <div className="bg-[#050d1c] border-t border-[rgba(255,255,255,0.05)] px-4 py-3 flex flex-col gap-2.5">
            {[
              { hash: 'a3f9c12', msg: 'feat(home): update hero headline copy',      time: '2m ago',  op: 1   },
              { hash: '8b21e04', msg: 'content(home): add 3 metrics to hero',        time: '1h ago',  op: 0.6 },
              { hash: 'cc70a91', msg: 'feat(home): initial page structure',           time: '2d ago',  op: 0.4 },
            ].map(({ hash, msg, time, op }) => (
              <div key={hash} className="flex items-center gap-3" style={{ opacity: op }}>
                <span className="font-mono text-[0.58rem] text-[#3b82f6] min-w-[52px]">{hash}</span>
                <span className="font-sans text-[0.70rem] text-[#475569] flex-1 truncate">{msg}</span>
                <span className="font-mono text-[0.56rem] text-[#334155]">{time}</span>
              </div>
            ))}
          </div>
        </div>
      </div>
    </section>
  );
};

END_OF_FILE_CONTENT
echo "Creating src/components/git-section/index.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/git-section/index.ts"
export * from './View';
export * from './schema';
export * from './types';

END_OF_FILE_CONTENT
echo "Creating src/components/git-section/schema.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/git-section/schema.ts"
import { z } from 'zod';
import { BaseSectionData, BaseArrayItem } from '@/lib/base-schemas';

const PointSchema = BaseArrayItem.extend({
  text: z.string().describe('ui:text'),
});

export const GitSectionSchema = BaseSectionData.extend({
  label:          z.string().optional().describe('ui:text'),
  title:          z.string().describe('ui:text'),
  titleHighlight: z.string().optional().describe('ui:text'),
  description:    z.string().optional().describe('ui:textarea'),
  points:         z.array(PointSchema).optional().describe('ui:list'),
});

END_OF_FILE_CONTENT
echo "Creating src/components/git-section/types.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/git-section/types.ts"
import { z } from 'zod';
import { BaseSectionSettingsSchema } from '@/lib/base-schemas';
import { GitSectionSchema } from './schema';

export type GitSectionData     = z.infer<typeof GitSectionSchema>;
export type GitSectionSettings = z.infer<typeof BaseSectionSettingsSchema>;

END_OF_FILE_CONTENT
mkdir -p "src/components/header"
echo "Creating src/components/header/View.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/header/View.tsx"
import React, { useState, useEffect } from 'react';
import { cn } from '@/lib/utils';
import type { MenuItem } from '@jsonpages/core';
import type { HeaderData, HeaderSettings } from './types';

export const Header: React.FC<{
  data: HeaderData;
  settings?: HeaderSettings;
  menu: MenuItem[];
}> = ({ data, menu }) => {
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false);
  const [scrolled, setScrolled] = useState(false);

  useEffect(() => {
    const handleScroll = () => setScrolled(window.scrollY > 40);
    window.addEventListener('scroll', handleScroll, { passive: true });
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  return (
    <header
      style={{
        '--local-bg': 'rgba(255,255,255,0.95)',
        '--local-text': 'var(--foreground)',
        '--local-text-muted': 'var(--muted-foreground)',
        '--local-primary': 'var(--primary)',
        '--local-accent': 'var(--color-accent, #c8a06e)',
        '--local-border': 'var(--border)',
      } as React.CSSProperties}
      className={cn(
        'w-full py-4 transition-all duration-300 z-0',
        scrolled
          ? 'bg-[var(--local-bg)] backdrop-blur-[20px] border-b border-[var(--local-border)] shadow-[0_1px_3px_rgba(0,0,0,0.04)]'
          : 'bg-transparent border-b border-transparent'
      )}
    >
      <div className="max-w-[1200px] mx-auto px-8 flex justify-between items-center">
        <a
          href="/"
          className="flex items-center gap-2.5 no-underline font-bold text-xl tracking-tight text-[var(--local-text)]"
        >
          {data.logoIconText && (
            <span className="text-2xl" data-jp-field="logoIconText">
              {data.logoIconText}
            </span>
          )}
          <span className="font-display" data-jp-field="logoText">
            {data.logoText}
            {data.logoHighlight && (
              <span className="text-[var(--local-accent)]" data-jp-field="logoHighlight">{data.logoHighlight}</span>
            )}
          </span>
        </a>

        <nav className="hidden md:flex items-center gap-10">
          {menu.map((item, idx) => (
            <a
              key={(item as { id?: string }).id ?? idx}
              href={item.href}
              data-jp-item-id={(item as { id?: string }).id ?? `legacy-${idx}`}
              data-jp-item-field="links"
              target={item.external ? '_blank' : undefined}
              rel={item.external ? 'noopener noreferrer' : undefined}
              className={cn(
                'no-underline text-sm font-medium transition-colors',
                item.isCta
                  ? 'bg-[var(--local-primary)] text-white px-5 py-2 rounded-lg font-semibold hover:brightness-110 hover:-translate-y-px'
                  : 'text-[var(--local-text-muted)] hover:text-[var(--local-text)]'
              )}
            >
              {item.label}
            </a>
          ))}
        </nav>

        <button
          type="button"
          className="md:hidden p-2 text-[var(--local-text-muted)] hover:text-[var(--local-text)]"
          onClick={() => setMobileMenuOpen(!mobileMenuOpen)}
          aria-label={mobileMenuOpen ? 'Close menu' : 'Open menu'}
        >
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
            {mobileMenuOpen ? (
              <><line x1="18" y1="6" x2="6" y2="18" /><line x1="6" y1="6" x2="18" y2="18" /></>
            ) : (
              <><line x1="3" y1="12" x2="21" y2="12" /><line x1="3" y1="6" x2="21" y2="6" /><line x1="3" y1="18" x2="21" y2="18" /></>
            )}
          </svg>
        </button>
      </div>

      {mobileMenuOpen && (
        <nav className="md:hidden border-t border-[var(--local-border)] bg-[var(--local-bg)] backdrop-blur-[20px]">
          <div className="max-w-[1200px] mx-auto px-8 py-4 flex flex-col gap-4">
            {menu.map((item, idx) => (
              <a
                key={(item as { id?: string }).id ?? idx}
                href={item.href}
                className="text-base font-medium text-[var(--local-text-muted)] hover:text-[var(--local-text)] transition-colors py-2 no-underline"
                onClick={() => setMobileMenuOpen(false)}
                data-jp-item-id={(item as { id?: string }).id ?? `legacy-${idx}`}
                data-jp-item-field="links"
              >
                {item.label}
              </a>
            ))}
          </div>
        </nav>
      )}
    </header>
  );
};

END_OF_FILE_CONTENT
echo "Creating src/components/header/index.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/header/index.ts"
export * from './View';
export * from './schema';
export * from './types';
END_OF_FILE_CONTENT
echo "Creating src/components/header/schema.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/header/schema.ts"
import { z } from 'zod';

/**
 * 📝 HEADER SCHEMA (Contract)
 * Definisce la struttura dati che l'Admin userà per generare la form.
 */
export const HeaderSchema = z.object({
  logoText: z.string().describe('ui:text'),
  logoHighlight: z.string().optional().describe('ui:text'),
  logoIconText: z.string().optional().describe('ui:text'),
  links: z.array(z.object({
    label: z.string().describe('ui:text'),
    href: z.string().describe('ui:text'),
    isCta: z.boolean().default(false).describe('ui:checkbox'),
  })).describe('ui:list'),
});

/**
 * ⚙️ HEADER SETTINGS
 * Definisce i parametri tecnici (non di contenuto).
 */
export const HeaderSettingsSchema = z.object({
  sticky: z.boolean().default(true).describe('ui:checkbox'),
});
END_OF_FILE_CONTENT
echo "Creating src/components/header/types.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/header/types.ts"
import { z } from 'zod';
import { HeaderSchema, HeaderSettingsSchema } from './schema';

/**
 * 🧩 HEADER DATA
 * Tipo inferito dallo schema Zod del contenuto.
 * Utilizzato dalla View per renderizzare logo e links.
 */
export type HeaderData = z.infer<typeof HeaderSchema>;

/**
 * ⚙️ HEADER SETTINGS
 * Tipo inferito dallo schema Zod dei settings.
 * Gestisce comportamenti tecnici come lo 'sticky'.
 */
export type HeaderSettings = z.infer<typeof HeaderSettingsSchema>;
END_OF_FILE_CONTENT
mkdir -p "src/components/hero"
echo "Creating src/components/hero/View.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/hero/View.tsx"
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

END_OF_FILE_CONTENT
echo "Creating src/components/hero/index.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/hero/index.ts"
export * from './View';
export * from './schema';
export * from './types';

END_OF_FILE_CONTENT
echo "Creating src/components/hero/schema.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/hero/schema.ts"
import { z } from 'zod';
import { BaseSectionData, CtaSchema, ImageSelectionSchema } from '@/lib/base-schemas';

const HeroMetricSchema = z.object({
  val: z.string().describe('ui:text'),
  label: z.string().describe('ui:text'),
});

export const HeroSchema = BaseSectionData.extend({
  badge: z.string().optional().describe('ui:text'),
  title: z.string().describe('ui:text'),
  titleHighlight: z.string().optional().describe('ui:text'),
  description: z.string().optional().describe('ui:textarea'),
  backgroundImage: ImageSelectionSchema.default({ url: '', alt: '' }),
  ctas: z.array(CtaSchema).optional().describe('ui:list'),
  metrics: z.array(HeroMetricSchema).optional().describe('ui:list'),
});

END_OF_FILE_CONTENT
echo "Creating src/components/hero/types.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/hero/types.ts"
import { z } from 'zod';
import { BaseSectionSettingsSchema } from '@/lib/base-schemas';
import { HeroSchema } from './schema';

export type HeroData = z.infer<typeof HeroSchema>;
export type HeroSettings = z.infer<typeof BaseSectionSettingsSchema>;

END_OF_FILE_CONTENT
mkdir -p "src/components/image-break"
echo "Creating src/components/image-break/View.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/image-break/View.tsx"
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

END_OF_FILE_CONTENT
echo "Creating src/components/image-break/index.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/image-break/index.ts"
export * from './View';
export * from './schema';
export * from './types';

END_OF_FILE_CONTENT
echo "Creating src/components/image-break/schema.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/image-break/schema.ts"
import { z } from 'zod';
import { BaseSectionData, ImageSelectionSchema } from '@/lib/base-schemas';

export const ImageBreakSchema = BaseSectionData.extend({
  image: ImageSelectionSchema.default({ url: '', alt: '' }),
  caption: z.string().optional().describe('ui:text'),
});

export const ImageBreakSettingsSchema = z.object({
  height: z.enum(['sm', 'md', 'lg', 'full']).default('md').describe('ui:select'),
});

END_OF_FILE_CONTENT
echo "Creating src/components/image-break/types.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/image-break/types.ts"
import { z } from 'zod';
import { ImageBreakSchema, ImageBreakSettingsSchema } from './schema';

export type ImageBreakData = z.infer<typeof ImageBreakSchema>;
export type ImageBreakSettings = z.infer<typeof ImageBreakSettingsSchema>;

END_OF_FILE_CONTENT
mkdir -p "src/components/image-test"
mkdir -p "src/components/menu-showcase"
echo "Creating src/components/menu-showcase/View.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/menu-showcase/View.tsx"
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

END_OF_FILE_CONTENT
echo "Creating src/components/menu-showcase/index.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/menu-showcase/index.ts"
export * from './View';
export * from './schema';
export * from './types';

END_OF_FILE_CONTENT
echo "Creating src/components/menu-showcase/schema.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/menu-showcase/schema.ts"
import { z } from 'zod';
import { BaseSectionData, BaseArrayItem, ImageSelectionSchema } from '@/lib/base-schemas';

const MenuCourseSchema = BaseArrayItem.extend({
  label: z.string().optional().describe('ui:text'),
  name: z.string().describe('ui:text'),
  description: z.string().describe('ui:textarea'),
  tag: z.string().optional().describe('ui:text'),
});

export const MenuShowcaseSchema = BaseSectionData.extend({
  sectionLabel: z.string().optional().describe('ui:text'),
  title: z.string().describe('ui:text'),
  subtitle: z.string().optional().describe('ui:textarea'),
  image: ImageSelectionSchema.optional().default({ url: '', alt: '' }),
  courses: z.array(MenuCourseSchema).describe('ui:list'),
  footerNote: z.string().optional().describe('ui:textarea'),
});

export const MenuShowcaseSettingsSchema = z.object({
  layout: z.enum(['list', 'grid']).default('list').describe('ui:select'),
});

END_OF_FILE_CONTENT
echo "Creating src/components/menu-showcase/types.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/menu-showcase/types.ts"
import { z } from 'zod';
import { MenuShowcaseSchema, MenuShowcaseSettingsSchema } from './schema';

export type MenuShowcaseData = z.infer<typeof MenuShowcaseSchema>;
export type MenuShowcaseSettings = z.infer<typeof MenuShowcaseSettingsSchema>;

END_OF_FILE_CONTENT
mkdir -p "src/components/pa-section"
echo "Creating src/components/pa-section/View.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/pa-section/View.tsx"
import React from 'react';
import type { PaSectionData, PaSectionSettings } from './types';

export const PaSection: React.FC<{ data: PaSectionData; settings?: PaSectionSettings }> = ({ data }) => {
  return (
    <section
      style={{
        '--local-bg': 'var(--card)',
        '--local-text': 'var(--foreground)',
        '--local-text-muted': 'var(--muted-foreground)',
        '--local-primary': 'var(--primary)',
        '--local-accent': 'var(--color-accent, #60a5fa)',
        '--local-deep': 'var(--background)',
      } as React.CSSProperties}
      className="relative z-0 py-28 bg-[var(--local-bg)]"
    >
      <div className="absolute top-0 left-0 right-0 h-px bg-gradient-to-r from-transparent via-[rgba(59,130,246,0.1)] to-transparent" />
      <div className="absolute bottom-0 left-0 right-0 h-px bg-gradient-to-r from-transparent via-[rgba(59,130,246,0.1)] to-transparent" />
      <div className="max-w-[1200px] mx-auto px-8">
        {data.label && (
          <div className="jp-section-label inline-flex items-center gap-2 text-[0.72rem] font-bold uppercase tracking-[0.12em] text-[var(--local-accent)] mb-4" data-jp-field="label">
            <span className="w-5 h-px bg-[var(--local-primary)]" />
            {data.label}
          </div>
        )}
        <h2 className="font-display text-[clamp(2rem,4vw,3.2rem)] font-extrabold text-[var(--local-text)] leading-[1.15] tracking-tight mb-4" data-jp-field="title">
          {data.title}
        </h2>
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-16 items-center mt-12">
          <div>
            <h3 className="text-2xl font-bold text-[var(--local-text)] mb-4" data-jp-field="subtitle">
              {data.subtitle}
            </h3>
            {data.paragraphs.map((p, idx) => (
              <p key={idx} className="text-[var(--local-text-muted)] mb-5 text-[1.05rem] leading-relaxed" data-jp-item-id={(p as { id?: string }).id ?? `legacy-${idx}`} data-jp-item-field="paragraphs">
                {p.text}
              </p>
            ))}
            {data.badges && data.badges.length > 0 && (
              <div className="flex gap-2.5 flex-wrap mt-4">
                {data.badges.map((badge, idx) => (
                  <span
                    key={idx}
                    className="inline-flex items-center gap-1.5 bg-[rgba(34,197,94,0.08)] border border-[rgba(34,197,94,0.2)] text-[#4ade80] px-3 py-1.5 rounded-md text-[0.78rem] font-semibold"
                    data-jp-item-id={(badge as { id?: string }).id ?? `legacy-${idx}`}
                    data-jp-item-field="badges"
                  >
                    {badge.label}
                  </span>
                ))}
              </div>
            )}
          </div>
          <div className="border border-[rgba(255,255,255,0.06)] rounded-lg p-12 bg-[rgba(255,255,255,0.02)] text-center">
            {data.engines && data.engines.length >= 2 && (
              <div className="flex items-center justify-center gap-6 mb-8">
                {data.engines.map((engine, idx) => (
                  <React.Fragment key={idx}>
                    {idx > 0 && (
                      <span className="text-[var(--local-text-muted)] text-2xl opacity-50">⇄</span>
                    )}
                    <div
                      className={
                        engine.variant === 'tailwind'
                          ? 'px-6 py-4 rounded-xl font-bold text-[0.95rem] border bg-[rgba(59,130,246,0.08)] border-[rgba(59,130,246,0.2)] text-[#60a5fa]'
                          : 'px-6 py-4 rounded-xl font-bold text-[0.95rem] border bg-[rgba(34,197,94,0.08)] border-[rgba(34,197,94,0.2)] text-[#4ade80]'
                      }
                      data-jp-item-id={(engine as { id?: string }).id ?? `legacy-${idx}`}
                      data-jp-item-field="engines"
                    >
                      {engine.label}
                    </div>
                  </React.Fragment>
                ))}
              </div>
            )}
            {data.codeSnippet && (
              <div className="font-mono text-[0.85rem] text-[var(--local-text-muted)] bg-[var(--local-deep)] p-4 rounded-lg text-left border border-[rgba(255,255,255,0.04)]" data-jp-field="codeSnippet">
                <pre className="whitespace-pre-wrap m-0">{data.codeSnippet}</pre>
                <div className="mt-4 text-[0.75rem] text-center opacity-50">
                  Same JSON. Different Render Engine.
                </div>
              </div>
            )}
          </div>
        </div>
      </div>
    </section>
  );
};

END_OF_FILE_CONTENT
echo "Creating src/components/pa-section/index.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/pa-section/index.ts"
export * from './View';
export * from './schema';
export * from './types';

END_OF_FILE_CONTENT
echo "Creating src/components/pa-section/schema.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/pa-section/schema.ts"
import { z } from 'zod';
import { BaseSectionData } from '@/lib/base-schemas';

const PaBadgeSchema = z.object({
  label: z.string().describe('ui:text'),
});

const PaEngineSchema = z.object({
  label: z.string().describe('ui:text'),
  variant: z.enum(['tailwind', 'bootstrap']).describe('ui:select'),
});

export const PaSectionSchema = BaseSectionData.extend({
  label: z.string().optional().describe('ui:text'),
  title: z.string().describe('ui:text'),
  subtitle: z.string().describe('ui:text'),
  paragraphs: z.array(z.object({ text: z.string().describe('ui:textarea') })).describe('ui:list'),
  badges: z.array(PaBadgeSchema).optional().describe('ui:list'),
  engines: z.array(PaEngineSchema).optional().describe('ui:list'),
  codeSnippet: z.string().optional().describe('ui:textarea'),
});

END_OF_FILE_CONTENT
echo "Creating src/components/pa-section/types.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/pa-section/types.ts"
import { z } from 'zod';
import { BaseSectionSettingsSchema } from '@/lib/base-schemas';
import { PaSectionSchema } from './schema';

export type PaSectionData = z.infer<typeof PaSectionSchema>;
export type PaSectionSettings = z.infer<typeof BaseSectionSettingsSchema>;

END_OF_FILE_CONTENT
mkdir -p "src/components/philosophy"
echo "Creating src/components/philosophy/View.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/philosophy/View.tsx"
import React from 'react';
import { resolveAssetUrl, useConfig } from '@jsonpages/core';
import type { PhilosophyData, PhilosophySettings } from './types';

export const Philosophy: React.FC<{ data: PhilosophyData; settings?: PhilosophySettings }> = ({ data }) => {
  const { tenantId } = useConfig();
  const imageUrl = data.image?.url ? resolveAssetUrl(data.image.url, tenantId) : '';
  const hasImage = !!data.image?.url;

  const renderQuote = () => {
    if (!data.quoteHighlightWord) {
      return <>{data.quote}</>;
    }
    const parts = data.quote.split(data.quoteHighlightWord);
    return (
      <>
        {parts.map((part, idx) => (
          <React.Fragment key={idx}>
            {part}
            {idx < parts.length - 1 && (
              <em className="not-italic text-[var(--local-accent)]">
                {data.quoteHighlightWord}
              </em>
            )}
          </React.Fragment>
        ))}
      </>
    );
  };

  return (
    <section
      style={{
        '--local-bg': 'var(--background)',
        '--local-text': 'var(--foreground)',
        '--local-text-muted': 'var(--muted-foreground)',
        '--local-accent': 'var(--color-accent, #c8a06e)',
        '--local-primary': 'var(--primary)',
      } as React.CSSProperties}
      className="relative z-0 py-28 bg-[var(--local-bg)]"
    >
      <div className="max-w-[1200px] mx-auto px-8">
        <div className={hasImage ? 'grid grid-cols-1 lg:grid-cols-2 gap-16 items-center' : ''}>
          {/* Text content */}
          <div className={hasImage ? '' : 'max-w-[760px] mx-auto text-center'}>
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
              className="font-display text-[clamp(2rem,4vw,3.2rem)] font-extrabold text-[var(--local-text)] leading-[1.15] tracking-tight mb-4"
              data-jp-field="title"
            >
              {data.title}
            </h2>
            <blockquote
              className="font-display text-[clamp(1.3rem,2.5vw,1.8rem)] text-[var(--local-text)] font-bold leading-[1.4] my-8"
              data-jp-field="quote"
            >
              &ldquo;{renderQuote()}&rdquo;
            </blockquote>
            {data.description && (
              <p
                className="text-[1.05rem] text-[var(--local-text-muted)] max-w-[560px] leading-relaxed"
                data-jp-field="description"
              >
                {data.description}
              </p>
            )}
          </div>

          {/* Image */}
          {hasImage && (
            <div className="relative aspect-[4/5] overflow-hidden rounded-[8px]" data-jp-field="image">
              <img
                src={imageUrl}
                alt={data.image?.alt ?? ''}
                className="w-full h-full object-cover"
              />
            </div>
          )}
        </div>
      </div>
    </section>
  );
};

END_OF_FILE_CONTENT
echo "Creating src/components/philosophy/index.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/philosophy/index.ts"
export * from './View';
export * from './schema';
export * from './types';

END_OF_FILE_CONTENT
echo "Creating src/components/philosophy/schema.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/philosophy/schema.ts"
import { z } from 'zod';
import { BaseSectionData, ImageSelectionSchema } from '@/lib/base-schemas';

export const PhilosophySchema = BaseSectionData.extend({
  label: z.string().optional().describe('ui:text'),
  title: z.string().describe('ui:text'),
  quote: z.string().describe('ui:textarea'),
  quoteHighlightWord: z.string().optional().describe('ui:text'),
  description: z.string().optional().describe('ui:textarea'),
  image: ImageSelectionSchema.optional().default({ url: '', alt: '' }),
});

END_OF_FILE_CONTENT
echo "Creating src/components/philosophy/types.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/philosophy/types.ts"
import { z } from 'zod';
import { BaseSectionSettingsSchema } from '@/lib/base-schemas';
import { PhilosophySchema } from './schema';

export type PhilosophyData = z.infer<typeof PhilosophySchema>;
export type PhilosophySettings = z.infer<typeof BaseSectionSettingsSchema>;

END_OF_FILE_CONTENT
mkdir -p "src/components/pillars-grid"
echo "Creating src/components/pillars-grid/View.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/pillars-grid/View.tsx"
import React from 'react';
import { cn } from '@/lib/utils';
import { Icon, isIconName } from '@/lib/IconResolver';
import type { PillarsGridData, PillarsGridSettings, PillarIconVariant, PillarTagVariant } from './types';

const iconVariantStyles: Record<PillarIconVariant, string> = {
  split: 'bg-[rgba(59,130,246,0.1)] text-[#60a5fa]',
  registry: 'bg-[rgba(34,211,238,0.1)] text-[#22d3ee]',
  federation: 'bg-[rgba(168,85,247,0.1)] text-[#c084fc]',
};

const tagVariantStyles: Record<PillarTagVariant, string> = {
  core: 'bg-[rgba(59,130,246,0.1)] text-[#60a5fa]',
  pattern: 'bg-[rgba(34,211,238,0.1)] text-[#22d3ee]',
  enterprise: 'bg-[rgba(168,85,247,0.1)] text-[#c084fc]',
};

export const PillarsGrid: React.FC<{ data: PillarsGridData; settings?: PillarsGridSettings }> = ({ data }) => {
  return (
    <section
      style={{
        '--local-bg': 'var(--background)',
        '--local-text': 'var(--foreground)',
        '--local-text-muted': 'var(--muted-foreground)',
        '--local-primary': 'var(--primary)',
        '--local-accent': 'var(--color-accent, #60a5fa)',
        '--local-border': 'var(--border)',
      } as React.CSSProperties}
      className="relative z-0 py-28 bg-[var(--local-bg)]"
    >
      <div className="absolute top-0 left-1/2 -translate-x-1/2 w-[80%] h-px bg-gradient-to-r from-transparent via-[rgba(59,130,246,0.15)] to-transparent" />
      <div className="max-w-[1200px] mx-auto px-8">
        {data.label && (
          <div className="jp-section-label inline-flex items-center gap-2 text-[0.72rem] font-bold uppercase tracking-[0.12em] text-[var(--local-accent)] mb-4" data-jp-field="label">
            <span className="w-5 h-px bg-[var(--local-primary)]" />
            {data.label}
          </div>
        )}
        <h2 className="font-display text-[clamp(2rem,4vw,3.2rem)] font-extrabold text-[var(--local-text)] leading-[1.15] tracking-tight mb-4" data-jp-field="title">
          {data.title}
        </h2>
        {data.description && (
          <p className="text-lg text-[var(--local-text-muted)] max-w-[600px] leading-relaxed" data-jp-field="description">
            {data.description}
          </p>
        )}
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6 mt-14">
          {data.pillars.map((pillar, idx) => (
            <div
              key={pillar.id ?? idx}
              className="jp-pillar-card group relative border border-[rgba(255,255,255,0.06)] rounded-lg p-10 bg-[rgba(255,255,255,0.015)] transition-all duration-300 overflow-hidden hover:border-[rgba(59,130,246,0.2)] hover:-translate-y-1 hover:bg-[rgba(59,130,246,0.03)]"
              data-jp-item-id={pillar.id ?? `legacy-${idx}`}
              data-jp-item-field="pillars"
            >
              <div className="absolute top-0 left-0 right-0 h-[3px] bg-gradient-to-r from-[var(--local-primary)] to-[#22d3ee] opacity-0 group-hover:opacity-100 transition-opacity duration-300" />
              <div className={cn(
                'w-12 h-12 rounded-xl flex items-center justify-center mb-6 text-xl font-bold',
                iconVariantStyles[pillar.iconVariant]
              )}>
                {pillar.icon && isIconName(pillar.icon) ? (
                  <Icon name={pillar.icon} size={24} className="shrink-0" />
                ) : pillar.icon ? (
                  <span>{pillar.icon}</span>
                ) : null}
              </div>
              <h3 className="text-xl font-bold text-[var(--local-text)] mb-3">
                {pillar.title}
              </h3>
              <p className="text-[0.95rem] text-[var(--local-text-muted)] leading-relaxed">
                {pillar.description}
              </p>
              <span className={cn(
                'inline-block text-[0.7rem] font-semibold uppercase tracking-wide px-3 py-1 rounded mt-4',
                tagVariantStyles[pillar.tagVariant]
              )}>
                {pillar.tag}
              </span>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
};

END_OF_FILE_CONTENT
echo "Creating src/components/pillars-grid/index.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/pillars-grid/index.ts"
export * from './View';
export * from './schema';
export * from './types';

END_OF_FILE_CONTENT
echo "Creating src/components/pillars-grid/schema.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/pillars-grid/schema.ts"
import { z } from 'zod';
import { BaseSectionData, BaseArrayItem } from '@/lib/base-schemas';

export const PillarIconVariantSchema = z.enum(['split', 'registry', 'federation']);
export const PillarTagVariantSchema = z.enum(['core', 'pattern', 'enterprise']);

const PillarCardSchema = BaseArrayItem.extend({
  icon: z.string().describe('ui:icon-picker'),
  iconVariant: PillarIconVariantSchema.describe('ui:select'),
  title: z.string().describe('ui:text'),
  description: z.string().describe('ui:textarea'),
  tag: z.string().describe('ui:text'),
  tagVariant: PillarTagVariantSchema.describe('ui:select'),
});

export const PillarsGridSchema = BaseSectionData.extend({
  label: z.string().optional().describe('ui:text'),
  title: z.string().describe('ui:text'),
  description: z.string().optional().describe('ui:textarea'),
  pillars: z.array(PillarCardSchema).describe('ui:list'),
});

END_OF_FILE_CONTENT
echo "Creating src/components/pillars-grid/types.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/pillars-grid/types.ts"
import { z } from 'zod';
import { BaseSectionSettingsSchema } from '@/lib/base-schemas';
import { PillarsGridSchema, PillarIconVariantSchema, PillarTagVariantSchema } from './schema';

export type PillarsGridData = z.infer<typeof PillarsGridSchema>;
export type PillarsGridSettings = z.infer<typeof BaseSectionSettingsSchema>;
export type PillarIconVariant = z.infer<typeof PillarIconVariantSchema>;
export type PillarTagVariant = z.infer<typeof PillarTagVariantSchema>;

END_OF_FILE_CONTENT
mkdir -p "src/components/problem-statement"
echo "Creating src/components/problem-statement/View.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/problem-statement/View.tsx"
import React from 'react';
import { cn } from '@/lib/utils';
import type { ProblemStatementData, ProblemStatementSettings, SiloBlockVariant } from './types';

const variantStyles: Record<SiloBlockVariant, string> = {
  red: 'bg-[rgba(239,68,68,0.08)] border-[rgba(239,68,68,0.3)] text-[#f87171]',
  amber: 'bg-[rgba(245,158,11,0.08)] border-[rgba(245,158,11,0.3)] text-[#fbbf24]',
  green: 'bg-[rgba(34,197,94,0.08)] border-[rgba(34,197,94,0.3)] text-[#4ade80]',
  blue: 'bg-[rgba(59,130,246,0.08)] border-[rgba(59,130,246,0.3)] text-[#60a5fa]',
};

export const ProblemStatement: React.FC<{ data: ProblemStatementData; settings?: ProblemStatementSettings }> = ({ data }) => {
  return (
    <section
      style={{
        '--local-bg': 'var(--background)',
        '--local-surface': 'var(--card)',
        '--local-text': 'var(--foreground)',
        '--local-text-muted': 'var(--muted-foreground)',
        '--local-border': 'var(--border)',
      } as React.CSSProperties}
      className="jp-problem relative z-0 py-28 bg-gradient-to-b from-[var(--local-bg)] to-[var(--local-surface)]"
    >
      <div className="max-w-[1200px] mx-auto px-8">
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-16 items-center">
          <div className="relative h-[360px] border border-[rgba(255,255,255,0.06)] rounded-lg bg-[rgba(255,255,255,0.02)] overflow-hidden flex items-center justify-center">
            <div className="text-center p-8">
              {data.siloGroups.map((group, gIdx) => (
                <div
                  key={gIdx}
                  className="mb-4"
                  data-jp-item-id={(group as { id?: string }).id ?? `legacy-${gIdx}`}
                  data-jp-item-field="siloGroups"
                >
                  <div className="flex flex-wrap justify-center gap-1.5">
                    {group.blocks.map((block, bIdx) => (
                      <span
                        key={(block as { id?: string }).id ?? bIdx}
                        className={cn(
                          'inline-block px-4 py-2 rounded-lg text-[0.8rem] font-semibold border',
                          variantStyles[block.variant]
                        )}
                        data-jp-item-id={(block as { id?: string }).id ?? `legacy-${bIdx}`}
                        data-jp-item-field="blocks"
                      >
                        {block.label}
                      </span>
                    ))}
                  </div>
                  <span className="text-[0.7rem] text-[var(--local-text-muted)] uppercase tracking-widest mt-2 block opacity-60">
                    {group.label}
                  </span>
                </div>
              ))}
            </div>
          </div>
          <div>
            <h3 className="text-2xl font-bold text-[var(--local-text)] mb-4" data-jp-field="title">
              {data.title}
            </h3>
            {data.paragraphs.map((p, idx) => (
              <p
                key={idx}
                className="text-[var(--local-text-muted)] mb-5 text-[1.05rem] leading-relaxed"
                data-jp-item-id={(p as { id?: string }).id ?? `legacy-${idx}`}
                data-jp-item-field="paragraphs"
              >
                {p.isBold ? <strong className="text-[var(--local-text)]">{p.text}</strong> : p.text}
              </p>
            ))}
          </div>
        </div>
      </div>
    </section>
  );
};

END_OF_FILE_CONTENT
echo "Creating src/components/problem-statement/index.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/problem-statement/index.ts"
export * from './View';
export * from './schema';
export * from './types';

END_OF_FILE_CONTENT
echo "Creating src/components/problem-statement/schema.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/problem-statement/schema.ts"
import { z } from 'zod';
import { BaseSectionData, BaseArrayItem } from '@/lib/base-schemas';

export const SiloBlockVariantSchema = z.enum(['red', 'amber', 'green', 'blue']);
const SiloBlockSchema = BaseArrayItem.extend({
  label: z.string().describe('ui:text'),
  variant: SiloBlockVariantSchema.describe('ui:select'),
});

const SiloGroupSchema = BaseArrayItem.extend({
  blocks: z.array(SiloBlockSchema).describe('ui:list'),
  label: z.string().describe('ui:text'),
});

const ProblemParagraphSchema = BaseArrayItem.extend({
  text: z.string().describe('ui:textarea'),
  isBold: z.boolean().default(false).describe('ui:checkbox'),
});

export const ProblemStatementSchema = BaseSectionData.extend({
  siloGroups: z.array(SiloGroupSchema).describe('ui:list'),
  title: z.string().describe('ui:text'),
  paragraphs: z.array(ProblemParagraphSchema).describe('ui:list'),
  highlight: z.string().optional().describe('ui:text'),
});

END_OF_FILE_CONTENT
echo "Creating src/components/problem-statement/types.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/problem-statement/types.ts"
import { z } from 'zod';
import { BaseSectionSettingsSchema } from '@/lib/base-schemas';
import { ProblemStatementSchema, SiloBlockVariantSchema } from './schema';

export type ProblemStatementData = z.infer<typeof ProblemStatementSchema>;
export type ProblemStatementSettings = z.infer<typeof BaseSectionSettingsSchema>;
export type SiloBlockVariant = z.infer<typeof SiloBlockVariantSchema>;

END_OF_FILE_CONTENT
mkdir -p "src/components/product-triad"
echo "Creating src/components/product-triad/View.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/product-triad/View.tsx"
import React from 'react';
import { cn } from '@/lib/utils';
import type { ProductTriadData, ProductTriadSettings } from './types';

export const ProductTriad: React.FC<{ data: ProductTriadData; settings?: ProductTriadSettings }> = ({ data }) => {
  return (
    <section
      style={{
        '--local-bg': 'var(--background)',
        '--local-text': 'var(--foreground)',
        '--local-text-muted': 'var(--muted-foreground)',
        '--local-primary': 'var(--primary)',
        '--local-accent': 'var(--color-accent, #60a5fa)',
        '--local-border': 'var(--border)',
      } as React.CSSProperties}
      className="relative z-0 py-28 bg-[var(--local-bg)]"
    >
      <div className="max-w-[1200px] mx-auto px-8">
        <div className="text-center">
          {data.label && (
            <div className="jp-section-label inline-flex items-center gap-2 text-[0.72rem] font-bold uppercase tracking-[0.12em] text-[var(--local-accent)] mb-4" data-jp-field="label">
              <span className="w-5 h-px bg-[var(--local-primary)]" />
              {data.label}
            </div>
          )}
          <h2 className="font-display text-[clamp(2rem,4vw,3.2rem)] font-extrabold text-[var(--local-text)] leading-[1.15] tracking-tight mb-4" data-jp-field="title">
            {data.title}
          </h2>
          {data.description && (
            <p className="text-lg text-[var(--local-text-muted)] max-w-[600px] mx-auto leading-relaxed" data-jp-field="description">
              {data.description}
            </p>
          )}
        </div>
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-6 mt-14">
          {data.products.map((product, idx) => (
            <div
              key={product.id ?? idx}
              className={cn(
                'relative border rounded-lg p-10 transition-all duration-300 hover:-translate-y-1',
                product.featured
                  ? 'border-[rgba(59,130,246,0.3)] bg-gradient-to-b from-[rgba(59,130,246,0.06)] to-[rgba(59,130,246,0.01)] hover:border-[rgba(59,130,246,0.4)]'
                  : 'border-[rgba(255,255,255,0.06)] bg-[rgba(255,255,255,0.015)] hover:border-[rgba(59,130,246,0.2)]'
              )}
              data-jp-item-id={product.id ?? `legacy-${idx}`}
              data-jp-item-field="products"
            >
              {product.featured && (
                <div className="absolute -top-3 left-1/2 -translate-x-1/2 bg-[var(--local-primary)] text-white text-[0.7rem] font-bold px-4 py-1 rounded-full uppercase tracking-wide">
                  Most Popular
                </div>
              )}
              <div className="text-[0.75rem] font-bold uppercase tracking-[0.1em] text-[var(--local-accent)] mb-2">
                {product.tier}
              </div>
              <div className="text-2xl font-extrabold text-[var(--local-text)] mb-2">
                {product.name}
              </div>
              <div className="font-display text-[2.2rem] font-extrabold text-[var(--local-text)] mb-1">
                {product.price}
                {product.priceSuffix && (
                  <span className="text-[0.9rem] font-normal text-[var(--local-text-muted)]">
                    {product.priceSuffix}
                  </span>
                )}
              </div>
              <div className="text-[0.85rem] text-[var(--local-text-muted)] mb-6 pb-6 border-b border-[rgba(255,255,255,0.06)]">
                {product.delivery}
              </div>
              <ul className="mb-8 space-y-0">
                {product.features.map((feature, fIdx) => (
                  <li
                    key={fIdx}
                    className="text-[0.9rem] text-[#cbd5e1] py-1.5 pl-6 relative before:content-['✓'] before:absolute before:left-0 before:text-[var(--local-accent)] before:font-bold before:text-[0.8rem]"
                  >
                    {feature.text}
                  </li>
                ))}
              </ul>
              {product.ctaLabel && product.ctaHref && (
                <a
                  href={product.ctaHref}
                  className={cn(
                    'block text-center py-3 rounded-[5px] no-underline font-semibold text-[0.95rem] transition-all duration-200',
                    product.ctaVariant === 'primary'
                      ? 'bg-[var(--local-primary)] text-white hover:brightness-110 hover:-translate-y-px'
                      : 'bg-[rgba(255,255,255,0.05)] text-[#e2e8f0] border border-[rgba(255,255,255,0.1)] hover:bg-[rgba(255,255,255,0.08)] hover:border-[rgba(255,255,255,0.2)]'
                  )}
                >
                  {product.ctaLabel}
                </a>
              )}
            </div>
          ))}
        </div>
      </div>
    </section>
  );
};

END_OF_FILE_CONTENT
echo "Creating src/components/product-triad/index.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/product-triad/index.ts"
export * from './View';
export * from './schema';
export * from './types';

END_OF_FILE_CONTENT
echo "Creating src/components/product-triad/schema.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/product-triad/schema.ts"
import { z } from 'zod';
import { BaseSectionData, BaseArrayItem } from '@/lib/base-schemas';

const ProductFeatureSchema = z.object({
  text: z.string().describe('ui:text'),
});

const ProductCardSchema = BaseArrayItem.extend({
  tier: z.string().describe('ui:text'),
  name: z.string().describe('ui:text'),
  price: z.string().describe('ui:text'),
  priceSuffix: z.string().optional().describe('ui:text'),
  delivery: z.string().describe('ui:text'),
  features: z.array(ProductFeatureSchema).describe('ui:list'),
  featured: z.boolean().default(false).describe('ui:checkbox'),
  ctaLabel: z.string().optional().describe('ui:text'),
  ctaHref: z.string().optional().describe('ui:text'),
  ctaVariant: z.enum(['primary', 'secondary']).default('secondary').describe('ui:select'),
});

export const ProductTriadSchema = BaseSectionData.extend({
  label: z.string().optional().describe('ui:text'),
  title: z.string().describe('ui:text'),
  description: z.string().optional().describe('ui:textarea'),
  products: z.array(ProductCardSchema).describe('ui:list'),
});

END_OF_FILE_CONTENT
echo "Creating src/components/product-triad/types.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/components/product-triad/types.ts"
import { z } from 'zod';
import { BaseSectionSettingsSchema } from '@/lib/base-schemas';
import { ProductTriadSchema } from './schema';

export type ProductTriadData = z.infer<typeof ProductTriadSchema>;
export type ProductTriadSettings = z.infer<typeof BaseSectionSettingsSchema>;

END_OF_FILE_CONTENT
mkdir -p "src/components/ui"
echo "Creating src/components/ui/checkbox.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/ui/checkbox.tsx"
"use client"

import * as React from "react"
import { Checkbox as CheckboxPrimitive } from "radix-ui"

import { cn } from "@/lib/utils"
import { CheckIcon } from "lucide-react"

function Checkbox({
  className,
  ...props
}: React.ComponentProps<typeof CheckboxPrimitive.Root>) {
  return (
    <CheckboxPrimitive.Root
      data-slot="checkbox"
      className={cn(
        "border-input dark:bg-input/30 data-checked:bg-primary data-checked:text-primary-foreground dark:data-checked:bg-primary data-checked:border-primary aria-invalid:aria-checked:border-primary aria-invalid:border-destructive dark:aria-invalid:border-destructive/50 focus-visible:border-ring focus-visible:ring-ring/50 aria-invalid:ring-destructive/20 dark:aria-invalid:ring-destructive/40 flex size-4 items-center justify-center rounded-[4px] border transition-colors group-has-disabled/field:opacity-50 focus-visible:ring-3 aria-invalid:ring-3 peer relative shrink-0 outline-none after:absolute after:-inset-x-3 after:-inset-y-2 disabled:cursor-not-allowed disabled:opacity-50",
        className
      )}
      {...props}
    >
      <CheckboxPrimitive.Indicator
        data-slot="checkbox-indicator"
        className="[&>svg]:size-3.5 grid place-content-center text-current transition-none"
      >
        <CheckIcon
        />
      </CheckboxPrimitive.Indicator>
    </CheckboxPrimitive.Root>
  )
}

export { Checkbox }





END_OF_FILE_CONTENT
echo "Creating src/components/ui/input.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/ui/input.tsx"
import * as React from "react"

import { cn } from "@/lib/utils"

function Input({ className, type, ...props }: React.ComponentProps<"input">) {
  return (
    <input
      type={type}
      data-slot="input"
      className={cn(
        "dark:bg-input/30 border-input focus-visible:border-ring focus-visible:ring-ring/50 aria-invalid:ring-destructive/20 dark:aria-invalid:ring-destructive/40 aria-invalid:border-destructive dark:aria-invalid:border-destructive/50 disabled:bg-input/50 dark:disabled:bg-input/80 h-8 rounded-lg border bg-transparent px-2.5 py-1 text-base transition-colors file:h-6 file:text-sm file:font-medium focus-visible:ring-3 aria-invalid:ring-3 md:text-sm file:text-foreground placeholder:text-muted-foreground w-full min-w-0 outline-none file:inline-flex file:border-0 file:bg-transparent disabled:pointer-events-none disabled:cursor-not-allowed disabled:opacity-50",
        className
      )}
      {...props}
    />
  )
}

export { Input }





END_OF_FILE_CONTENT
echo "Creating src/components/ui/label.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/ui/label.tsx"
import * as React from "react"
import { Label as LabelPrimitive } from "radix-ui"

import { cn } from "@/lib/utils"

function Label({
  className,
  ...props
}: React.ComponentProps<typeof LabelPrimitive.Root>) {
  return (
    <LabelPrimitive.Root
      data-slot="label"
      className={cn(
        "gap-2 text-sm leading-none font-medium group-data-[disabled=true]:opacity-50 peer-disabled:opacity-50 flex items-center select-none group-data-[disabled=true]:pointer-events-none peer-disabled:cursor-not-allowed",
        className
      )}
      {...props}
    />
  )
}

export { Label }





END_OF_FILE_CONTENT
echo "Creating src/components/ui/select.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/ui/select.tsx"
import * as React from "react"
import { Select as SelectPrimitive } from "radix-ui"

import { cn } from "@/lib/utils"
import { ChevronDownIcon, CheckIcon, ChevronUpIcon } from "lucide-react"

function Select({
  ...props
}: React.ComponentProps<typeof SelectPrimitive.Root>) {
  return <SelectPrimitive.Root data-slot="select" {...props} />
}

function SelectGroup({
  className,
  ...props
}: React.ComponentProps<typeof SelectPrimitive.Group>) {
  return (
    <SelectPrimitive.Group
      data-slot="select-group"
      className={cn("scroll-my-1 p-1", className)}
      {...props}
    />
  )
}

function SelectValue({
  ...props
}: React.ComponentProps<typeof SelectPrimitive.Value>) {
  return <SelectPrimitive.Value data-slot="select-value" {...props} />
}

function SelectTrigger({
  className,
  size = "default",
  children,
  ...props
}: React.ComponentProps<typeof SelectPrimitive.Trigger> & {
  size?: "sm" | "default"
}) {
  return (
    <SelectPrimitive.Trigger
      data-slot="select-trigger"
      data-size={size}
      className={cn(
        "border-input data-placeholder:text-muted-foreground dark:bg-input/30 dark:hover:bg-input/50 focus-visible:border-ring focus-visible:ring-ring/50 aria-invalid:ring-destructive/20 dark:aria-invalid:ring-destructive/40 aria-invalid:border-destructive dark:aria-invalid:border-destructive/50 gap-1.5 rounded-lg border bg-transparent py-2 pr-2 pl-2.5 text-sm transition-colors select-none focus-visible:ring-3 aria-invalid:ring-3 data-[size=default]:h-8 data-[size=sm]:h-7 data-[size=sm]:rounded-[min(var(--radius-md),10px)] *:data-[slot=select-value]:gap-1.5 [&_svg:not([class*='size-'])]:size-4 flex w-full items-center justify-between whitespace-nowrap outline-none disabled:cursor-not-allowed disabled:opacity-50 *:data-[slot=select-value]:line-clamp-1 *:data-[slot=select-value]:flex *:data-[slot=select-value]:items-center [&_svg]:pointer-events-none [&_svg]:shrink-0",
        className
      )}
      {...props}
    >
      {children}
      <SelectPrimitive.Icon asChild>
        <ChevronDownIcon className="text-muted-foreground size-4 pointer-events-none" />
      </SelectPrimitive.Icon>
    </SelectPrimitive.Trigger>
  )
}

function SelectContent({
  className,
  children,
  position = "popper",
  align = "center",
  ...props
}: React.ComponentProps<typeof SelectPrimitive.Content>) {
  return (
    <SelectPrimitive.Portal>
      <SelectPrimitive.Content
        data-slot="select-content"
        data-align-trigger={position === "item-aligned"}
        className={cn(
          "bg-popover text-popover-foreground data-open:animate-in data-closed:animate-out data-closed:fade-out-0 data-open:fade-in-0 data-closed:zoom-out-95 data-open:zoom-in-95 data-[side=bottom]:slide-in-from-top-2 data-[side=left]:slide-in-from-right-2 data-[side=right]:slide-in-from-left-2 data-[side=top]:slide-in-from-bottom-2 ring-foreground/10 min-w-36 rounded-lg shadow-md ring-1 duration-100 relative z-[110] max-h-(--radix-select-content-available-height) origin-(--radix-select-content-transform-origin) overflow-x-hidden overflow-y-auto data-[align-trigger=true]:animate-none", 
          position === "popper" && "data-[side=bottom]:translate-y-1 data-[side=left]:-translate-x-1 data-[side=right]:translate-x-1 data-[side=top]:-translate-y-1", 
          className 
        )}
        position={position}
        align={align}
        {...props}
      >
        <SelectScrollUpButton />
        <SelectPrimitive.Viewport
          data-position={position}
          className={cn(
            "p-1",
            position === "popper" && "h-(--radix-select-trigger-height) w-full min-w-(--radix-select-trigger-width)"
          )}
        >
          {children}
        </SelectPrimitive.Viewport>
        <SelectScrollDownButton />
      </SelectPrimitive.Content>
    </SelectPrimitive.Portal>
  )
}

function SelectLabel({
  className,
  ...props
}: React.ComponentProps<typeof SelectPrimitive.Label>) {
  return (
    <SelectPrimitive.Label
      data-slot="select-label"
      className={cn("text-muted-foreground px-1.5 py-1 text-xs", className)}
      {...props}
    />
  )
}

function SelectItem({
  className,
  children,
  ...props
}: React.ComponentProps<typeof SelectPrimitive.Item>) {
  return (
    <SelectPrimitive.Item
      data-slot="select-item"
      className={cn(
        "focus:bg-accent focus:text-accent-foreground not-data-[variant=destructive]:focus:**:text-accent-foreground gap-1.5 rounded-md py-1 pr-8 pl-1.5 text-sm [&_svg:not([class*='size-'])]:size-4 *:[span]:last:flex *:[span]:last:items-center *:[span]:last:gap-2 relative flex w-full cursor-default items-center outline-hidden select-none data-disabled:pointer-events-none data-disabled:opacity-50 [&_svg]:pointer-events-none [&_svg]:shrink-0",
        className
      )}
      {...props}
    >
      <span className="pointer-events-none absolute right-2 flex size-4 items-center justify-center">
        <SelectPrimitive.ItemIndicator>
          <CheckIcon className="pointer-events-none" />
        </SelectPrimitive.ItemIndicator>
      </span>
      <SelectPrimitive.ItemText>{children}</SelectPrimitive.ItemText>
    </SelectPrimitive.Item>
  )
}

function SelectSeparator({
  className,
  ...props
}: React.ComponentProps<typeof SelectPrimitive.Separator>) {
  return (
    <SelectPrimitive.Separator
      data-slot="select-separator"
      className={cn("bg-border -mx-1 my-1 h-px pointer-events-none", className)}
      {...props}
    />
  )
}

function SelectScrollUpButton({
  className,
  ...props
}: React.ComponentProps<typeof SelectPrimitive.ScrollUpButton>) {
  return (
    <SelectPrimitive.ScrollUpButton
      data-slot="select-scroll-up-button"
      className={cn("bg-popover z-10 flex cursor-default items-center justify-center py-1 [&_svg:not([class*='size-'])]:size-4", className)}
      {...props}
    >
      <ChevronUpIcon />
    </SelectPrimitive.ScrollUpButton>
  )
}

function SelectScrollDownButton({
  className,
  ...props
}: React.ComponentProps<typeof SelectPrimitive.ScrollDownButton>) {
  return (
    <SelectPrimitive.ScrollDownButton
      data-slot="select-scroll-down-button"
      className={cn("bg-popover z-10 flex cursor-default items-center justify-center py-1 [&_svg:not([class*='size-'])]:size-4", className)}
      {...props}
    >
      <ChevronDownIcon />
    </SelectPrimitive.ScrollDownButton>
  )
}

export {
  Select,
  SelectContent,
  SelectGroup,
  SelectItem,
  SelectLabel,
  SelectScrollDownButton,
  SelectScrollUpButton,
  SelectSeparator,
  SelectTrigger,
  SelectValue,
}




END_OF_FILE_CONTENT
echo "Creating src/components/ui/select.txt..."
cat << 'END_OF_FILE_CONTENT' > "src/components/ui/select.txt"
import * as React from "react"
import { Select as SelectPrimitive } from "radix-ui"

import { cn } from "@/lib/utils"
import { ChevronDownIcon, CheckIcon, ChevronUpIcon } from "lucide-react"

function Select({
  ...props
}: React.ComponentProps<typeof SelectPrimitive.Root>) {
  return <SelectPrimitive.Root data-slot="select" {...props} />
}

function SelectGroup({
  className,
  ...props
}: React.ComponentProps<typeof SelectPrimitive.Group>) {
  return (
    <SelectPrimitive.Group
      data-slot="select-group"
      className={cn("scroll-my-1 p-1", className)}
      {...props}
    />
  )
}

function SelectValue({
  ...props
}: React.ComponentProps<typeof SelectPrimitive.Value>) {
  return <SelectPrimitive.Value data-slot="select-value" {...props} />
}

function SelectTrigger({
  className,
  size = "default",
  children,
  ...props
}: React.ComponentProps<typeof SelectPrimitive.Trigger> & {
  size?: "sm" | "default"
}) {
  return (
    <SelectPrimitive.Trigger
      data-slot="select-trigger"
      data-size={size}
      className={cn(
        "border-input data-placeholder:text-muted-foreground dark:bg-input/30 dark:hover:bg-input/50 focus-visible:border-ring focus-visible:ring-ring/50 aria-invalid:ring-destructive/20 dark:aria-invalid:ring-destructive/40 aria-invalid:border-destructive dark:aria-invalid:border-destructive/50 gap-1.5 rounded-lg border bg-transparent py-2 pr-2 pl-2.5 text-sm transition-colors select-none focus-visible:ring-3 aria-invalid:ring-3 data-[size=default]:h-8 data-[size=sm]:h-7 data-[size=sm]:rounded-[min(var(--radius-md),10px)] *:data-[slot=select-value]:gap-1.5 [&_svg:not([class*='size-'])]:size-4 flex w-full items-center justify-between whitespace-nowrap outline-none disabled:cursor-not-allowed disabled:opacity-50 *:data-[slot=select-value]:line-clamp-1 *:data-[slot=select-value]:flex *:data-[slot=select-value]:items-center [&_svg]:pointer-events-none [&_svg]:shrink-0",
        className
      )}
      {...props}
    >
      {children}
      <SelectPrimitive.Icon asChild>
        <ChevronDownIcon className="text-muted-foreground size-4 pointer-events-none" />
      </SelectPrimitive.Icon>
    </SelectPrimitive.Trigger>
  )
}

function SelectContent({
  className,
  children,
  position = "popper",
  align = "center",
  ...props
}: React.ComponentProps<typeof SelectPrimitive.Content>) {
  return (
    <SelectPrimitive.Portal>
      <SelectPrimitive.Content
        data-slot="select-content"
        data-align-trigger={position === "item-aligned"}
        className={cn(
          "bg-popover text-popover-foreground data-open:animate-in data-closed:animate-out data-closed:fade-out-0 data-open:fade-in-0 data-closed:zoom-out-95 data-open:zoom-in-95 data-[side=bottom]:slide-in-from-top-2 data-[side=left]:slide-in-from-right-2 data-[side=right]:slide-in-from-left-2 data-[side=top]:slide-in-from-bottom-2 ring-foreground/10 min-w-36 rounded-lg shadow-md ring-1 duration-100 relative z-[110] max-h-(--radix-select-content-available-height) origin-(--radix-select-content-transform-origin) overflow-x-hidden overflow-y-auto data-[align-trigger=true]:animate-none", 
          position === "popper" && "data-[side=bottom]:translate-y-1 data-[side=left]:-translate-x-1 data-[side=right]:translate-x-1 data-[side=top]:-translate-y-1", 
          className 
        )}
        position={position}
        align={align}
        {...props}
      >
        <SelectScrollUpButton />
        <SelectPrimitive.Viewport
          data-position={position}
          className={cn(
            "p-1",
            position === "popper" && "h-(--radix-select-trigger-height) w-full min-w-(--radix-select-trigger-width)"
          )}
        >
          {children}
        </SelectPrimitive.Viewport>
        <SelectScrollDownButton />
      </SelectPrimitive.Content>
    </SelectPrimitive.Portal>
  )
}

function SelectLabel({
  className,
  ...props
}: React.ComponentProps<typeof SelectPrimitive.Label>) {
  return (
    <SelectPrimitive.Label
      data-slot="select-label"
      className={cn("text-muted-foreground px-1.5 py-1 text-xs", className)}
      {...props}
    />
  )
}

function SelectItem({
  className,
  children,
  ...props
}: React.ComponentProps<typeof SelectPrimitive.Item>) {
  return (
    <SelectPrimitive.Item
      data-slot="select-item"
      className={cn(
        "focus:bg-accent focus:text-accent-foreground not-data-[variant=destructive]:focus:**:text-accent-foreground gap-1.5 rounded-md py-1 pr-8 pl-1.5 text-sm [&_svg:not([class*='size-'])]:size-4 *:[span]:last:flex *:[span]:last:items-center *:[span]:last:gap-2 relative flex w-full cursor-default items-center outline-hidden select-none data-disabled:pointer-events-none data-disabled:opacity-50 [&_svg]:pointer-events-none [&_svg]:shrink-0",
        className
      )}
      {...props}
    >
      <span className="pointer-events-none absolute right-2 flex size-4 items-center justify-center">
        <SelectPrimitive.ItemIndicator>
          <CheckIcon className="pointer-events-none" />
        </SelectPrimitive.ItemIndicator>
      </span>
      <SelectPrimitive.ItemText>{children}</SelectPrimitive.ItemText>
    </SelectPrimitive.Item>
  )
}

function SelectSeparator({
  className,
  ...props
}: React.ComponentProps<typeof SelectPrimitive.Separator>) {
  return (
    <SelectPrimitive.Separator
      data-slot="select-separator"
      className={cn("bg-border -mx-1 my-1 h-px pointer-events-none", className)}
      {...props}
    />
  )
}

function SelectScrollUpButton({
  className,
  ...props
}: React.ComponentProps<typeof SelectPrimitive.ScrollUpButton>) {
  return (
    <SelectPrimitive.ScrollUpButton
      data-slot="select-scroll-up-button"
      className={cn("bg-popover z-10 flex cursor-default items-center justify-center py-1 [&_svg:not([class*='size-'])]:size-4", className)}
      {...props}
    >
      <ChevronUpIcon />
    </SelectPrimitive.ScrollUpButton>
  )
}

function SelectScrollDownButton({
  className,
  ...props
}: React.ComponentProps<typeof SelectPrimitive.ScrollDownButton>) {
  return (
    <SelectPrimitive.ScrollDownButton
      data-slot="select-scroll-down-button"
      className={cn("bg-popover z-10 flex cursor-default items-center justify-center py-1 [&_svg:not([class*='size-'])]:size-4", className)}
      {...props}
    >
      <ChevronDownIcon />
    </SelectPrimitive.ScrollDownButton>
  )
}

export {
  Select,
  SelectContent,
  SelectGroup,
  SelectItem,
  SelectLabel,
  SelectScrollDownButton,
  SelectScrollUpButton,
  SelectSeparator,
  SelectTrigger,
  SelectValue,
}




END_OF_FILE_CONTENT
echo "Creating src/components/ui/separator.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/ui/separator.tsx"
"use client"

import * as React from "react"
import { Separator as SeparatorPrimitive } from "radix-ui"

import { cn } from "@/lib/utils"

function Separator({
  className,
  orientation = "horizontal",
  decorative = true,
  ...props
}: React.ComponentProps<typeof SeparatorPrimitive.Root>) {
  return (
    <SeparatorPrimitive.Root
      data-slot="separator"
      decorative={decorative}
      orientation={orientation}
      className={cn(
        "bg-border shrink-0 data-horizontal:h-px data-horizontal:w-full data-vertical:w-px data-vertical:self-stretch",
        className
      )}
      {...props}
    />
  )
}

export { Separator }





END_OF_FILE_CONTENT
echo "Creating src/components/ui/textarea.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/components/ui/textarea.tsx"
import * as React from "react"

import { cn } from "@/lib/utils"

function Textarea({ className, ...props }: React.ComponentProps<"textarea">) {
  return (
    <textarea
      data-slot="textarea"
      className={cn(
        "border-input dark:bg-input/30 focus-visible:border-ring focus-visible:ring-ring/50 aria-invalid:ring-destructive/20 dark:aria-invalid:ring-destructive/40 aria-invalid:border-destructive dark:aria-invalid:border-destructive/50 disabled:bg-input/50 dark:disabled:bg-input/80 rounded-lg border bg-transparent px-2.5 py-2 text-base transition-colors focus-visible:ring-3 aria-invalid:ring-3 md:text-sm placeholder:text-muted-foreground flex field-sizing-content min-h-16 w-full outline-none disabled:cursor-not-allowed disabled:opacity-50",
        className
      )}
      {...props}
    />
  )
}

export { Textarea }





END_OF_FILE_CONTENT
mkdir -p "src/data"
mkdir -p "src/data/config"
echo "Creating src/data/config/menu.json..."
cat << 'END_OF_FILE_CONTENT' > "src/data/config/menu.json"
{
  "main": [
    {
      "label": "Ethos",
      "href": "#filosofia"
    },
    {
      "label": "Pillars",
      "href": "#valori"
    },
    {
      "label": "Menu",
      "href": "#menu"
    },
    {
      "label": "Reserve",
      "href": "#prenota",
      "isCta": true
    }
  ]
}
END_OF_FILE_CONTENT
echo "Creating src/data/config/site.json..."
cat << 'END_OF_FILE_CONTENT' > "src/data/config/site.json"
{
  "identity": {
    "title": "Radice",
    "logoUrl": "/logo.svg"
  },
  "pages": [
    {
      "slug": "home",
      "label": "Home"
    }
  ],
  "header": {
    "id": "global-header",
    "type": "header",
    "data": {
      "logoText": "Radice",
      "logoHighlight": "",
      "logoIconText": "🌿"
    },
    "settings": {
      "sticky": true
    }
  },
  "footer": {
    "id": "global-footer",
    "type": "footer",
    "data": {
      "brandText": "Radice",
      "brandHighlight": "",
      "copyright": "© 2026 Radice — Michelin Green Star. All rights reserved.",
      "links": [
        {
          "label": "Privacy Policy",
          "href": "/privacy.html"
        },
        {
          "label": "Contact",
          "href": "#prenota"
        },
        {
          "label": "Instagram",
          "href": "#"
        }
      ]
    },
    "settings": {
      "showLogo": true
    }
  }
}
END_OF_FILE_CONTENT
echo "Creating src/data/config/theme.json..."
cat << 'END_OF_FILE_CONTENT' > "src/data/config/theme.json"
{
  "name": "Radice — Bianco",
  "tokens": {
    "colors": {
      "primary": "#2d6a4f",
      "secondary": "#40916c",
      "accent": "#c8a06e",
      "background": "#fafaf7",
      "surface": "#f3f1ec",
      "surfaceAlt": "#ebe8e1",
      "text": "#1a1a1a",
      "textMuted": "#6b6b5e",
      "border": "#e0ddd5"
    },
    "typography": {
      "fontFamily": {
        "primary": "'Instrument Sans', system-ui, sans-serif",
        "mono": "'JetBrains Mono', monospace",
        "display": "'Playfair Display', Georgia, serif"
      }
    },
    "borderRadius": {
      "sm": "4px",
      "md": "6px",
      "lg": "8px"
    }
  }
}
END_OF_FILE_CONTENT
mkdir -p "src/data/pages"
echo "Creating src/data/pages/docs.json..."
cat << 'END_OF_FILE_CONTENT' > "src/data/pages/docs.json"
{
  "id": "docs-page",
  "slug": "docs",
  "meta": {
    "title": "JsonPages Docs — Onboarding Governance",
    "description": "Percorso Governance completo: capsule, IDAC, registry, schema, overlay e checklist per integrare il CMS con governance piena."
  },
  "sections": [
    {
      "id": "docs-main",
      "type": "docs-layout",
      "data": {
        "pageTitle": "Onboarding — Percorso Governance",
        "pageSubtitle": "Per chi vuole il CMS (Studio, ICE, Form Factory): authoring in-app, tipizzazione forte, governance dei contenuti e dei componenti. Riferimento spec: JSONPAGES Architecture Specifications v1.2 + Appendix A.",
        "version": "Spec v1.2",
        "groups": [
          {
            "id": "g-1",
            "anchor": "governance",
            "label": "1. Governance",
            "sections": [
              {
                "id": "s-1-1",
                "anchor": "cosa-implica",
                "title": "Cosa implica \"governance\"",
                "blocks": [
                  {
                    "id": "b-1-1",
                    "type": "list",
                    "content": "",
                    "items": [
                      { "id": "i-1", "text": "**Tipi:** Ogni section type è dichiarato in `SectionDataRegistry` / `SectionSettingsRegistry` (module augmentation) e in `SectionComponentPropsMap`. Registry e config sono tipizzati." },
                      { "id": "i-2", "text": "**Schema:** Ogni section type ha uno schema Zod (data, e opzionalmente settings) usato dal Form Factory per generare l'editor nell'Inspector. Gli schema sono aggregati in `SECTION_SCHEMAS`." },
                      { "id": "i-3", "text": "**Studio/ICE:** L'editor (Inspector) si aggancia al DOM tramite `data-jp-field` e `data-jp-item-id` / `data-jp-item-field`. L'overlay di selezione in iframe richiede che il tenant fornisca il CSS (TOCC)." },
                      { "id": "i-4", "text": "**Add Section:** Il tenant espone **AddSectionConfig** (tipi addabili, label, default data) così in Studio l'utente può aggiungere section dalla libreria." },
                      { "id": "i-5", "text": "**Design tokens:** Le View usano variabili CSS (`--local-*`) e nessuna utility nuda (CIP) per coerenza e compatibilità con tema e overlay." }
                    ]
                  },
                  {
                    "id": "b-1-2",
                    "type": "callout",
                    "content": "**Perché servono (in sintesi):** Tipi e schema permettono al Core e al Form Factory di operare senza conoscere i dettagli del Tenant; IDAC permette all'Inspector di legare click in Stage e riga attiva nella sidebar; TOCC rende visibile l'overlay; AddSectionConfig definisce la libreria Aggiungi sezione; token e z-index evitano conflitti con l'UI di editing."
                  }
                ]
              },
              {
                "id": "s-1-2",
                "anchor": "tipizzazione",
                "title": "Valore della tipizzazione: governance e CMS UX",
                "tag": "§1.1",
                "blocks": [
                  {
                    "id": "b-2-1",
                    "type": "paragraph",
                    "content": "La tipizzazione (tipi TypeScript + schema Zod) serve a **due livelli**: governance (sviluppatore/architettura) e **UX del CMS** (autore che usa Studio). Spesso si menziona solo il primo."
                  },
                  {
                    "id": "b-2-2",
                    "type": "paragraph",
                    "content": "**Governance:** registry tipizzato, SectionComponentPropsMap, forma di SiteConfig/PageConfig, audit, code-generation → coerenza tra tenant, niente drift, refactor sicuro, tooling basato su spec."
                  },
                  {
                    "id": "b-2-3",
                    "type": "paragraph",
                    "content": "**CMS UX:** lo schema Zod guida il **Form Factory** (quali widget per ogni campo: text, textarea, select, list, icon-picker, **image-picker**); `data-jp-field` e `data-jp-item-id/field` legano click in Stage e form nell'Inspector; **AddSectionConfig** dà tipi addabili, label e default."
                  },
                  {
                    "id": "b-2-4",
                    "type": "callout",
                    "content": "Per la governance la tipizzazione garantisce **contratti**; per la CMS UX definisce l'**esperienza di editing** (controlli, label, default, binding). Va specificato entrambi."
                  }
                ]
              }
            ]
          },
          {
            "id": "g-2",
            "anchor": "struttura",
            "label": "2. Struttura progetto",
            "sections": [
              {
                "id": "s-2-1",
                "anchor": "file-layout",
                "title": "File e cartelle (completa)",
                "blocks": [
                  {
                    "id": "b-3-1",
                    "type": "list",
                    "content": "",
                    "items": [
                      { "id": "f-1",  "text": "`src/data/config/site.json` — SiteConfig (identity, pages[], header block, footer block)." },
                      { "id": "f-2",  "text": "`src/data/config/menu.json` — MenuConfig (`main: MenuItem[]`)." },
                      { "id": "f-3",  "text": "`src/data/config/theme.json` — ThemeConfig (tokens)." },
                      { "id": "f-4",  "text": "`src/data/pages/<slug>.json` — PageConfig (slug, meta, sections[])." },
                      { "id": "f-5",  "text": "`src/components/<sectionType>/` — **Capsula piena:** View.tsx, schema.ts, types.ts, index.ts." },
                      { "id": "f-6",  "text": "`src/lib/base-schemas.ts` — BaseSectionData, BaseArrayItem, BaseSectionSettingsSchema." },
                      { "id": "f-7",  "text": "`src/lib/schemas.ts` — SECTION_SCHEMAS (aggregato degli schema data per tipo) + export SectionType." },
                      { "id": "f-8",  "text": "`src/lib/ComponentRegistry.tsx` — Registry tipizzato: `{ [K in SectionType]: React.FC<SectionComponentPropsMap[K]> }`." },
                      { "id": "f-9",  "text": "`src/lib/addSectionConfig.ts` — AddSectionConfig (addableSectionTypes, sectionTypeLabels, getDefaultSectionData)." },
                      { "id": "f-10", "text": "`src/types.ts` — SectionComponentPropsMap, PageConfig, SiteConfig, MenuConfig, ThemeConfig; **module augmentation** per SectionDataRegistry e SectionSettingsRegistry; re-export da `@jsonpages/core`." },
                      { "id": "f-11", "text": "`src/App.tsx` — Bootstrap: config (tenantId, registry, schemas, pages, siteConfig, themeConfig, menuConfig, themeCss, addSection); `<JsonPagesEngine config={config} />`." },
                      { "id": "f-12", "text": "**CSS globale** — Include i selettori TOCC per overlay (hover/selected/type label)." }
                    ]
                  }
                ]
              }
            ]
          },
          {
            "id": "g-3",
            "anchor": "componenti",
            "label": "3. Componenti",
            "sections": [
              {
                "id": "s-3-1",
                "anchor": "capsule-idac",
                "title": "Capsule + IDAC + token",
                "blocks": [
                  {
                    "id": "b-4-1",
                    "type": "list",
                    "content": "",
                    "items": [
                      { "id": "c-1", "text": "**Capsula:** Ogni section type ha View, schema (Zod), types (inferiti), index. Lo schema **data** estende BaseSectionData; gli item degli array estendono BaseArrayItem." },
                      { "id": "c-2", "text": "**View:** Riceve `data` e `settings` (e `menu` per header). Non importa Zod. Usa **solo** variabili CSS per colori/raggi (`bg-[var(--local-bg)]`), sezione root con `z-index` ≤ 1." },
                      { "id": "c-3", "text": "**IDAC (ICE):** Su ogni campo scalare editabile: `data-jp-field=\"<fieldKey>\"`. Su ogni item di array: `data-jp-item-id=\"<stableId>\"` e `data-jp-item-field=\"<arrayKey>\"`." },
                      { "id": "c-4", "text": "**Schema:** Usa il vocabolario UI (ECIP): `.describe('ui:text')`, `ui:textarea`, `ui:select`, `ui:number`, `ui:list`, `ui:icon-picker`, `ui:image-picker`. Array di oggetti editabili: ogni oggetto con `id` (BaseArrayItem)." }
                    ]
                  },
                  {
                    "id": "b-4-2",
                    "type": "callout",
                    "content": "**Perché servono:** `data-jp-field` e `data-jp-item-*` servono perché lo Stage è in un iframe e il Core deve sapere quale campo/item corrisponde al click senza conoscere il DOM del Tenant. Senza IDAC, click sul canvas non si riflette nella sidebar. Vedi spec §6 (IDAC), §5 (ECIP), §4 (CIP)."
                  }
                ]
              },
              {
                "id": "s-3-2",
                "anchor": "image-picker",
                "title": "Image Picker: uso corretto nello schema",
                "tag": "§3.1",
                "blocks": [
                  {
                    "id": "b-5-1",
                    "type": "paragraph",
                    "content": "Per i **campi immagine** il Form Factory espone il widget **Image Picker** solo se lo schema è modellato correttamente."
                  },
                  {
                    "id": "b-5-2",
                    "type": "heading",
                    "content": "Regola"
                  },
                  {
                    "id": "b-5-3",
                    "type": "list",
                    "content": "",
                    "items": [
                      { "id": "r-1", "text": "Il campo immagine non è una stringa (`z.string()`), ma un **oggetto** con almeno `url` e, opzionalmente, `alt`." },
                      { "id": "r-2", "text": "Lo **schema di questo oggetto** va marcato con **`.describe('ui:image-picker')`**. Il Form Factory riconosce `ui:image-picker` solo su **ZodObject**, non su campi stringa." }
                    ]
                  },
                  {
                    "id": "b-5-4",
                    "type": "heading",
                    "content": "Esempio (capsula image-break)"
                  },
                  {
                    "id": "b-5-5",
                    "type": "code",
                    "codeFilename": "src/components/image-break/schema.ts",
                    "content": "import { z } from 'zod';\nimport { BaseSectionData } from '@/lib/base-schemas';\n\nconst ImageSelectionSchema = z\n  .object({\n    url: z.string(),\n    alt: z.string().optional(),\n  })\n  .describe('ui:image-picker');\n\nexport const ImageBreakSchema = BaseSectionData.extend({\n  label:   z.string().optional().describe('ui:text'),\n  image:   ImageSelectionSchema.default({ url: '', alt: '' }),\n  caption: z.string().optional().describe('ui:textarea'),\n});"
                  },
                  {
                    "id": "b-5-6",
                    "type": "paragraph",
                    "content": "In **View.tsx**: usa `resolveAssetUrl(data.image.url, tenantId)` per il `src` dell'immagine. Aggiungi `data-jp-field=\"image\"` sul nodo corrispondente nel DOM."
                  },
                  {
                    "id": "b-5-7",
                    "type": "note",
                    "content": "**Cosa evitare:** Non usare `.describe('ui:image-picker')` su un campo stringa: il widget Image Picker si aspetta un oggetto `{ url, alt? }`. Non dimenticare `data-jp-field=\"image\"` nel DOM, altrimenti il binding Inspector ↔ Stage non funziona."
                  }
                ]
              }
            ]
          },
          {
            "id": "g-4",
            "anchor": "dati",
            "label": "4. Dati",
            "sections": [
              {
                "id": "s-4-1",
                "anchor": "forma-dati",
                "title": "Forma e responsabilità",
                "blocks": [
                  {
                    "id": "b-6-1",
                    "type": "list",
                    "content": "",
                    "items": [
                      { "id": "d-1", "text": "`site.json` / `menu.json` / `theme.json` / `pages/*.json` — Forma esatta come in Appendix A. Sono la source of truth quando l'utente salva da Studio." },
                      { "id": "d-2", "text": "**Studio** aggiorna il Working Draft; il sync con l'iframe e il Bake usano la stessa struttura. I dati passati a JsonPagesEngine devono essere compatibili con ciò che l'editor modifica." }
                    ]
                  },
                  {
                    "id": "b-6-2",
                    "type": "callout",
                    "content": "Se i dati arrivano da un CMS esterno tocca a te sincronizzare. In ogni caso la **forma** delle pagine (sections con id, type, data, settings) resta quella della spec."
                  }
                ]
              }
            ]
          },
          {
            "id": "g-5",
            "anchor": "registry",
            "label": "5. Registry & Types",
            "sections": [
              {
                "id": "s-5-1",
                "anchor": "registry-detail",
                "title": "Registry, schemas, types, addSection",
                "blocks": [
                  {
                    "id": "b-7-1",
                    "type": "list",
                    "content": "",
                    "items": [
                      { "id": "re-1", "text": "**types.ts:** Unico punto di **module augmentation** e definizione di SectionComponentPropsMap, PageConfig, SiteConfig, MenuConfig, ThemeConfig. Header: `{ data, settings?, menu: MenuItem[] }`; tutti gli altri: `{ data, settings? }`." },
                      { "id": "re-2", "text": "**ComponentRegistry:** Ogni chiave di SectionType ha il componente corrispondente; tipo: `{ [K in SectionType]: React.FC<SectionComponentPropsMap[K]> }`." },
                      { "id": "re-3", "text": "**SECTION_SCHEMAS:** Ogni chiave di SectionType ha lo **schema Zod della data** (stesso ordine del registry). Base schemas re-exportati da base-schemas.ts." },
                      { "id": "re-4", "text": "**addSectionConfig:** addableSectionTypes (solo i tipi che l'utente può aggiungere dalla libreria), sectionTypeLabels, getDefaultSectionData(type) che restituisce `data` valido per quello schema." }
                    ]
                  },
                  {
                    "id": "b-7-2",
                    "type": "callout",
                    "content": "Un solo punto di augmentation (types.ts) e un solo SECTION_SCHEMAS evita duplicazioni. AddSectionConfig è l'unica fonte di verità per quali section si possono aggiungere e con quali default. Vedi spec §9 (ASC), Appendix A.2–A.3."
                  }
                ]
              }
            ]
          },
          {
            "id": "g-6",
            "anchor": "overlay",
            "label": "6. Overlay CSS (TOCC)",
            "sections": [
              {
                "id": "s-6-1",
                "anchor": "tocc-detail",
                "title": "Selettori TOCC richiesti",
                "blocks": [
                  {
                    "id": "b-8-1",
                    "type": "paragraph",
                    "content": "Il Core inietta il markup dell'overlay (wrapper con `data-section-id`, sibling con `data-jp-section-overlay`). Il **tenant** deve fornire il CSS nel proprio `index.css` per renderlo visibile."
                  },
                  {
                    "id": "b-8-2",
                    "type": "list",
                    "content": "",
                    "items": [
                      { "id": "t-1", "text": "`[data-jp-section-overlay]` copra la section, `pointer-events: none`, z-index alto (es. 9999)." },
                      { "id": "t-2", "text": "Hover e selected siano visibili (bordo tratteggiato / pieno, eventuale tint)." },
                      { "id": "t-3", "text": "Il type label (`[data-jp-section-overlay] > .jp-section-type-label`) sia posizionato e visibile su hover/selected." }
                    ]
                  },
                  {
                    "id": "b-8-3",
                    "type": "code",
                    "codeFilename": "src/index.css — TOCC selectors",
                    "content": "/* ── TOCC — Tenant Overlay CSS Contract ── */\n[data-jp-section-overlay] {\n  position: absolute;\n  inset: 0;\n  pointer-events: none;\n  z-index: 9999;\n  border: 1.5px dashed transparent;\n  transition: border-color 0.15s, background 0.15s;\n}\n\n[data-jp-section-wrapper]:hover > [data-jp-section-overlay] {\n  border-color: rgba(59, 130, 246, 0.5);\n  background: rgba(59, 130, 246, 0.03);\n}\n\n[data-jp-section-wrapper].jp-selected > [data-jp-section-overlay] {\n  border-color: #3b82f6;\n  border-style: solid;\n  background: rgba(59, 130, 246, 0.05);\n}\n\n[data-jp-section-overlay] > .jp-section-type-label {\n  position: absolute;\n  top: 6px;\n  right: 8px;\n  font-family: 'JetBrains Mono', monospace;\n  font-size: 0.55rem;\n  font-weight: 700;\n  letter-spacing: 0.1em;\n  text-transform: uppercase;\n  background: #3b82f6;\n  color: white;\n  padding: 2px 6px;\n  opacity: 0;\n  transition: opacity 0.15s;\n}\n\n[data-jp-section-wrapper]:hover > [data-jp-section-overlay] > .jp-section-type-label,\n[data-jp-section-wrapper].jp-selected > [data-jp-section-overlay] > .jp-section-type-label {\n  opacity: 1;\n}"
                  },
                  {
                    "id": "b-8-4",
                    "type": "callout",
                    "content": "**Perché servono (TOCC):** L'iframe dello Stage carica solo il CSS del Tenant; il Core inietta il markup dell'overlay ma non gli stili. Senza i selettori TOCC, bordo hover/selected e type label non sono visibili. Vedi spec §7 (TOCC)."
                  }
                ]
              }
            ]
          },
          {
            "id": "g-7",
            "anchor": "checklist",
            "label": "7. Checklist",
            "sections": [
              {
                "id": "s-7-1",
                "anchor": "checklist-table",
                "title": "Checklist rapida — sviluppo grafico e dati (con CMS)",
                "blocks": [
                  {
                    "id": "b-9-1",
                    "type": "table",
                    "content": "",
                    "rows": [
                      { "id": "r-1",  "col1": "**Layout / grafico**",   "col2": "View con variabili `--local-*`, z-index ≤ 1, nessuna utility naked." },
                      { "id": "r-2",  "col1": "**Dati (forma)**",        "col2": "SiteConfig, MenuConfig, ThemeConfig, PageConfig come in Appendix A; JSON in `data/config` e `data/pages`." },
                      { "id": "r-3",  "col1": "**Capsule**",             "col2": "View + schema (con `ui:*`) + types + index; data schema estende BaseSectionData; array item con id." },
                      { "id": "r-4",  "col1": "**IDAC**",                "col2": "`data-jp-field` su campi scalari editabili; `data-jp-item-id` e `data-jp-item-field` su item di array." },
                      { "id": "r-5",  "col1": "**Image Picker**",        "col2": "Campo immagine = oggetto `{ url, alt? }` con sub-schema `.describe('ui:image-picker')`; `resolveAssetUrl` + `data-jp-field` in View." },
                      { "id": "r-6",  "col1": "**types.ts**",            "col2": "SectionComponentPropsMap (header con menu), augmentation, PageConfig, SiteConfig, MenuConfig, ThemeConfig." },
                      { "id": "r-7",  "col1": "**Registry**",            "col2": "Tutti i tipi mappati al componente; tipo registry come in Appendix A." },
                      { "id": "r-8",  "col1": "**SECTION_SCHEMAS**",     "col2": "Un entry per tipo (schema data); re-export base schemas." },
                      { "id": "r-9",  "col1": "**addSectionConfig**",    "col2": "addableSectionTypes, sectionTypeLabels, getDefaultSectionData." },
                      { "id": "r-10", "col1": "**Config**",              "col2": "tenantId, registry, schemas, pages, siteConfig, themeConfig, menuConfig, themeCss, addSection." },
                      { "id": "r-11", "col1": "**TOCC**",                "col2": "CSS overlay per `[data-jp-section-overlay]`, hover, selected, type label." }
                    ]
                  }
                ]
              }
            ]
          },
          {
            "id": "g-8",
            "anchor": "riferimenti",
            "label": "8. Riferimenti spec",
            "sections": [
              {
                "id": "s-8-1",
                "anchor": "spec-refs",
                "title": "Documenti di riferimento",
                "blocks": [
                  {
                    "id": "b-10-1",
                    "type": "list",
                    "content": "",
                    "items": [
                      { "id": "sp-1", "text": "**Architettura e ICE:** §1–§10 (MTRP, JSP, TBP, CIP, ECIP, IDAC, TOCC, BSDS, ASC, JEB)." },
                      { "id": "sp-2", "text": "**Tipi e code-generation:** Appendix A (Core types, Tenant types, Schema contract, File paths, Integration checklist)." },
                      { "id": "sp-3", "text": "**Admin:** JAP (Studio topology, Working Draft, Bake, overlay, Green Build)." }
                    ]
                  },
                  {
                    "id": "b-10-2",
                    "type": "callout",
                    "content": "Usando questo percorso hai **governance** piena: tipi, schema, editor, Add Section e overlay allineati alle spec v1.2. Per le versioni con tutti i Perché servono usa il file **JSONPAGES_Specs_v1.2_completo.md**."
                  }
                ]
              }
            ]
          }
        ]
      },
      "settings": {}
    }
  ]
}

END_OF_FILE_CONTENT
echo "Creating src/data/pages/home.json..."
cat << 'END_OF_FILE_CONTENT' > "src/data/pages/home.json"
{
  "slug": "home",
  "meta": {
    "title": "Radice — Michelin Green Star Dining",
    "description": "Hyper-seasonal, zero-waste fine dining. Where nature dictates the menu."
  },
  "sections": [
    {
      "id": "hero-main",
      "type": "hero",
      "data": {
        "badge": "★ Michelin Green Star 2025",
        "title": "Radice.",
        "titleHighlight": "The Earth, Plated.",
        "description": "A culinary dialogue between the soil and the chef. Hyper-seasonal, zero-waste, and unapologetically authentic.",
        "backgroundImage": {
          "url": "/assets/images/1771597331337-hero.jpg",
          "alt": "Radice dining room atmosphere"
        },
        "ctas": [
          {
            "id": "cta-prenota",
            "label": "Secure a Table",
            "href": "#prenota",
            "variant": "primary"
          },
          {
            "id": "cta-menu",
            "label": "View Tasting Menu",
            "href": "#menu",
            "variant": "secondary"
          }
        ],
        "metrics": [
          {
            "id": "m-km",
            "val": "< 30 km",
            "label": "Foraging Radius"
          },
          {
            "id": "m-bio",
            "val": "100%",
            "label": "Organic Matter"
          },
          {
            "id": "m-waste",
            "val": "Zero",
            "label": "Waste Protocol"
          }
        ]
      }
    },
    {
      "id": "section-filosofia",
      "type": "philosophy",
      "data": {
        "anchorId": "filosofia",
        "label": "Our Ethos",
        "title": "Cooking is an act of submission.",
        "quote": "We do not choose the ingredients. The soil dictates, we merely obey.",
        "quoteHighlightWord": "The soil",
        "description": "Chef Marco Ferretti built Radice on a radical premise: silence the ego and listen to the land. Every morning, the menu is rewritten based on the harvest, the weather, and the raw truth of the season.",
        "image": {
          "url": "/assets/images/1771598502228-Firefly_a_photo_of_the_young_male_chef_of_a_michelin_green_star_restaurant_in_the_act_of_cook_954770.png",
          "alt": "Firefly_a photo of the young male chef of a michelin green star restaurant in the act of cook 954770.png"
        },
        "imageAlt": "Chef Marco Ferretti inspecting produce"
      }
    },
    {
      "id": "break-orto",
      "type": "image-break",
      "data": {
        "image": {
          "url": "/assets/images/1771599023714-Generated_Image_February_20__2026_-_3_49PM.jpeg",
          "alt": "Generated Image February 20, 2026 - 3_49PM.jpeg"
        },
        "imageAlt": "Radice private garden at dawn",
        "caption": "06:00 AM. The morning harvest at our private estate."
      },
      "settings": {
        "height": "md"
      }
    },
    {
      "id": "section-valori",
      "type": "feature-grid",
      "data": {
        "anchorId": "valori",
        "sectionTitle": "The Four Pillars",
        "cards": [
          {
            "id": "val-km0",
            "emoji": "🌱",
            "title": "Hyper-Local",
            "description": "We know the hands that harvest. Every ingredient is sourced within a 30km radius, supporting the micro-economy of our valley."
          },
          {
            "id": "val-stagioni",
            "emoji": "🍂",
            "title": "Radical Seasonality",
            "description": "If it's not growing outside right now, it's not on your plate. We don't force nature; we follow its rhythm."
          },
          {
            "id": "val-waste",
            "emoji": "♻️",
            "title": "Circular Kitchen",
            "description": "Root to stem. Nose to tail. Fermentation, composting, and creative reuse ensure nothing is ever lost."
          },
          {
            "id": "val-bio",
            "emoji": "🐝",
            "title": "Heirloom Guardians",
            "description": "We cultivate forgotten varieties in our private garden, protecting the biodiversity and flavors that time forgot."
          }
        ]
      },
      "settings": {
        "columns": 2,
        "cardStyle": "bordered"
      }
    },
    {
      "id": "section-menu",
      "type": "menu-showcase",
      "data": {
        "anchorId": "menu",
        "sectionLabel": "Tasting Experience",
        "title": "The Root Path",
        "subtitle": "Seven acts of nature. A sensory journey through the textures of our terroir.",
        "image": {
          "url": "/assets/images/1771598312886-Firefly_a_tasting_menu_photo_with_multiple_plates_for_a_michelin_green_star_restaurant__detai_954770.png",
          "alt": "Firefly_a tasting menu photo with multiple plates for a michelin green star restaurant, detai 954770.png"
        },
        "imageAlt": "Plated dish from the tasting menu",
        "courses": [
          {
            "id": "c-1",
            "label": "Amuse-bouche",
            "name": "Garden Welcome",
            "description": "Jerusalem artichoke textures. Parsley chlorophyll. Hazelnut dust.",
            "tag": "Estate Harvest"
          },
          {
            "id": "c-2",
            "label": "Starter",
            "name": "The 63°C Egg",
            "description": "Organic farm egg. Castelmagno DOP fondue. Summer truffle shavings. Puffed rye.",
            "tag": "Local Dairy"
          },
          {
            "id": "c-3",
            "label": "First Course",
            "name": "Hay Infused Risotto",
            "description": "Aged Carnaroli rice. Alpine butter. Infusion of fresh hay. Wild foraged herbs.",
            "tag": "Signature Dish"
          },
          {
            "id": "c-4",
            "label": "Fish",
            "name": "Mountain Stream Trout",
            "description": "Marinated Fario trout. Celeriac velvet. Wild fennel oil. Lake bottarga.",
            "tag": "Wild Caught"
          },
          {
            "id": "c-5",
            "label": "Meat",
            "name": "Ancient Fassona",
            "description": "Piedmontese Fassona beef. 45-day dry age. Glazed winter roots. Pomegranate jus.",
            "tag": "Ethical Breed"
          },
          {
            "id": "c-6",
            "label": "Pre-dessert",
            "name": "Botanical Sorbet",
            "description": "Amalfi Lemon & Basil. Cucumber gel. Garden mint essence.",
            "tag": "Palate Cleanser"
          },
          {
            "id": "c-7",
            "label": "Dessert",
            "name": "Earth & Cocoa",
            "description": "Beetroot mousse. Domori chocolate. Bourbon vanilla cream. Spelt crumble.",
            "tag": "Sweet Earth"
          }
        ],
        "footerNote": "Menu changes daily based on availability. Please inform us of any allergies upon reservation."
      },
      "settings": {
        "layout": "list"
      }
    },
    {
      "id": "section-prenota",
      "type": "cta-banner",
      "data": {
        "anchorId": "prenota",
        "label": "Reservations",
        "title": "Experience Radice",
        "description": "Tuesday to Saturday. Dinner service only. Limited seating to ensure intimacy and attention.",
        "backgroundImage": {
          "url": "/assets/images/1771598125734-Firefly_Flux_a_michelin_green_star_restaurant_interior__detail__fine_dining__954770.jpg",
          "alt": "Firefly_Flux_a michelin green star restaurant interior, detail. fine dining. 954770.jpg"
        },
        "ctas": [
          {
            "id": "cta-tel",
            "label": "Call: +39 011 234 5678",
            "href": "tel:+390112345678",
            "variant": "primary"
          },
          {
            "id": "cta-mail",
            "label": "info@radice-restaurant.com",
            "href": "mailto:info@radice-restaurant.com",
            "variant": "secondary"
          }
        ]
      }
    }
  ]
}
END_OF_FILE_CONTENT
echo "Creating src/fonts.css..."
cat << 'END_OF_FILE_CONTENT' > "src/fonts.css"
@import url('https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:opsz,wght@12..96,400;12..96,600;12..96,700;12..96,800&family=JetBrains+Mono:wght@400;500;600;700&family=Instrument+Sans:wght@400;500;600&display=swap');

END_OF_FILE_CONTENT
mkdir -p "src/hooks"
echo "Creating src/hooks/useDocumentMeta.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/hooks/useDocumentMeta.ts"
import { useEffect } from 'react';
import type { PageMeta } from '@/types';

export const useDocumentMeta = (meta: PageMeta): void => {
  useEffect(() => {
    // Set document title
    document.title = meta.title;

    // Set or update meta description
    let metaDescription = document.querySelector('meta[name="description"]');
    if (!metaDescription) {
      metaDescription = document.createElement('meta');
      metaDescription.setAttribute('name', 'description');
      document.head.appendChild(metaDescription);
    }
    metaDescription.setAttribute('content', meta.description);
  }, [meta.title, meta.description]);
};





END_OF_FILE_CONTENT
echo "Creating src/index.css..."
cat << 'END_OF_FILE_CONTENT' > "src/index.css"
@import "tailwindcss";

@source "./**/*.tsx";

@theme {
  /* 
     🎯 MASTER MAPPING (V2.7 Landing) 
  */
  --color-background: var(--background);
  --color-foreground: var(--foreground);

  --color-card: var(--card);
  --color-card-foreground: var(--card-foreground);

  --color-primary: var(--primary);
  --color-primary-foreground: var(--primary-foreground);

  --color-secondary: var(--secondary);
  --color-secondary-foreground: var(--secondary-foreground);

  --color-muted: var(--muted);
  --color-muted-foreground: var(--muted-foreground);

  --color-accent: var(--accent);
  --color-border: var(--border);
  
  --radius-lg: var(--radius);
  --radius-md: calc(var(--radius) - 2px);
  --radius-sm: calc(var(--radius) - 4px);

  --font-primary: var(--theme-font-primary);
  --font-mono: var(--theme-font-mono);

  /* 
     🔧 DISPLAY FONT — Forward-compatible workaround
     theme-manager.ts does NOT inject --theme-font-display (Skeleton v2.7 gap).
     The var() falls through to the hardcoded fallback today.
     When Skeleton v2.8 wires display into theme-manager, the var() will resolve
     automatically and the fallback becomes dead code.
  */
  --font-display: var(--theme-font-display, 'Playfair Display', Georgia, serif);
}

/* 
   🌍 TENANT BRAND TOKENS (JSP 1.5)
*/
:root {
  --background: var(--theme-background);
  --foreground: var(--theme-text);
  --card: var(--theme-surface);
  --card-foreground: var(--theme-text);
  --primary: var(--theme-primary);
  --primary-foreground: oklch(0.98 0 0);
  --secondary: var(--theme-secondary);
  --secondary-foreground: var(--theme-text);
  --muted: var(--theme-surface-alt);
  --muted-foreground: var(--theme-text-muted);
  --border: var(--theme-border);
  --radius: 0.45rem;

  /* 
     🔧 ACCENT CHAIN — Forward-compatible workaround
     theme-manager.ts already injects --theme-accent on :root,
     but the original index.css never bridged it into the semantic layer.
     This closes the gap: --theme-accent → --accent → --color-accent.
     Falls back to --theme-primary if accent is undefined.
  */
  --accent: var(--theme-accent, var(--theme-primary));
}

@layer base {
  * { border-color: var(--border); }
  body {
    background-color: var(--background);
    color: var(--foreground);
    font-family: var(--font-primary);
    line-height: 1.7;
    overflow-x: hidden;
    @apply antialiased;
  }
}

/* ==========================================================================
   FONT DISPLAY UTILITY
   Maps .font-display class to the display font family (Playfair Display)
   ========================================================================== */
.font-display {
  font-family: var(--font-display, var(--font-primary));
}

/* ==========================================================================
   LANDING ANIMATIONS
   ========================================================================== */
@keyframes jp-fadeUp {
  from { opacity: 0; transform: translateY(30px); }
  to { opacity: 1; transform: translateY(0); }
}

@keyframes jp-pulseDot {
  0%, 100% { opacity: 1; }
  50% { opacity: 0.3; }
}

.jp-animate-in {
  opacity: 0;
  animation: jp-fadeUp 0.7s ease forwards;
}
.jp-d1 { animation-delay: 0.1s; }
.jp-d2 { animation-delay: 0.2s; }
.jp-d3 { animation-delay: 0.3s; }
.jp-d4 { animation-delay: 0.4s; }
.jp-d5 { animation-delay: 0.5s; }

.jp-pulse-dot {
  animation: jp-pulseDot 2s ease infinite;
}

/* ==========================================================================
   SMOOTH SCROLL
   ========================================================================== */
html {
  scroll-behavior: smooth;
}

/* ==========================================================================
   ICE ADMIN — Section highlight in preview iframe
   The preview iframe only receives tenant CSS; core's overlay classes
   (z-[50], absolute, etc.) are not in this build. Define them here so
   the section highlight is always visible in /admin.
   ========================================================================== */
[data-jp-section-overlay] {
  position: absolute;
  inset: 0;
  z-index: 9999;
  pointer-events: none;
  transition: border-color 0.2s, background-color 0.2s;
  border: 2px solid transparent;
}

[data-section-id]:hover [data-jp-section-overlay] {
  border-color: rgba(96, 165, 250, 0.5);
  border-style: dashed;
}

[data-section-id][data-jp-selected] [data-jp-section-overlay] {
  border-color: rgb(37, 99, 235);
  border-style: solid;
  background-color: rgba(59, 130, 246, 0.05);
}

[data-jp-section-overlay] > div {
  position: absolute;
  top: 0;
  right: 0;
  padding: 0.25rem 0.5rem;
  font-size: 9px;
  font-weight: 800;
  text-transform: uppercase;
  letter-spacing: 0.1em;
  background: rgb(37, 99, 235);
  color: white;
  transition: opacity 0.2s;
}

[data-section-id]:hover [data-jp-section-overlay] > div,
[data-section-id][data-jp-selected] [data-jp-section-overlay] > div {
  opacity: 1;
}

[data-section-id] [data-jp-section-overlay] > div {
  opacity: 0;
}



END_OF_FILE_CONTENT
mkdir -p "src/lib"
echo "Creating src/lib/ComponentRegistry.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/lib/ComponentRegistry.tsx"
import React from 'react';
import { Header }           from '@/components/header';
import { Footer }           from '@/components/footer';
import { Hero }             from '@/components/hero';
import { FeatureGrid }      from '@/components/feature-grid';
import { CodeBlock }        from '@/components/code-block';
import { ProblemStatement } from '@/components/problem-statement';
import { PillarsGrid }      from '@/components/pillars-grid';
import { ArchLayers }       from '@/components/arch-layers';
import { ProductTriad }     from '@/components/product-triad';
import { PaSection }        from '@/components/pa-section';
import { Philosophy }       from '@/components/philosophy';
import { CtaBanner }        from '@/components/cta-banner';
import { MenuShowcase }     from '@/components/menu-showcase';
import { ImageBreak }       from '@/components/image-break';
import { CmsIce }           from '@/components/cms-ice';
import { GitSection }       from '@/components/git-section';
import { Devex }            from '@/components/devex';
import { CliSection }       from '@/components/cli-section';
import { DocsLayout }       from '@/components/docs-layout';

import type { SectionType }              from '@jsonpages/core';
import type { SectionComponentPropsMap } from '@/types';

export const ComponentRegistry: {
  [K in SectionType]: React.FC<SectionComponentPropsMap[K]>;
} = {
  'header':            Header,
  'footer':            Footer,
  'hero':              Hero,
  'feature-grid':      FeatureGrid,
  'code-block':        CodeBlock,
  'problem-statement': ProblemStatement,
  'pillars-grid':      PillarsGrid,
  'arch-layers':       ArchLayers,
  'product-triad':     ProductTriad,
  'pa-section':        PaSection,
  'philosophy':        Philosophy,
  'cta-banner':        CtaBanner,
  'menu-showcase':     MenuShowcase,
  'image-break':       ImageBreak,
  'cms-ice':           CmsIce,
  'git-section':       GitSection,
  'devex':             Devex,
  'cli-section':       CliSection,
  'docs-layout':       DocsLayout,
};

END_OF_FILE_CONTENT
echo "Creating src/lib/IconResolver.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/lib/IconResolver.tsx"
import React from 'react';
import {
  Layers,
  Github,
  ArrowRight,
  Box,
  Terminal,
  ChevronRight,
  Menu,
  X,
  Sparkles,
  Zap,
  type LucideIcon
} from 'lucide-react';

const iconMap = {
  'layers': Layers,
  'github': Github,
  'arrow-right': ArrowRight,
  'box': Box,
  'terminal': Terminal,
  'chevron-right': ChevronRight,
  'menu': Menu,
  'x': X,
  'sparkles': Sparkles,
  'zap': Zap,
} as const satisfies Record<string, LucideIcon>;

export type IconName = keyof typeof iconMap;

export function isIconName(s: string): s is IconName {
  return s in iconMap;
}

interface IconProps {
  name: string;
  size?: number;
  className?: string;
}

export const Icon: React.FC<IconProps> = ({ name, size = 20, className }) => {
  const IconComponent = isIconName(name) ? iconMap[name] : undefined;

  if (!IconComponent) {
    if (import.meta.env.DEV) {
      console.warn(`[IconResolver] Unknown icon: "${name}". Add it to iconMap.`);
    }
    return null;
  }

  return <IconComponent size={size} className={className} />;
};



END_OF_FILE_CONTENT
echo "Creating src/lib/addSectionConfig.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/lib/addSectionConfig.ts"
import type { AddSectionConfig } from '@jsonpages/core';

const addableSectionTypes = [
  'hero', 'feature-grid', 'code-block', 'problem-statement',
  'pillars-grid', 'arch-layers', 'product-triad', 'pa-section',
  'philosophy', 'cta-banner', 'menu-showcase', 'image-break',
  'cms-ice', 'git-section', 'devex', 'cli-section', 'docs-layout',
] as const;

const sectionTypeLabels: Record<string, string> = {
  'hero':              'Hero',
  'feature-grid':      'Feature Grid',
  'code-block':        'Code Block',
  'problem-statement': 'Problem Statement',
  'pillars-grid':      'Pillars Grid',
  'arch-layers':       'Architecture Layers',
  'product-triad':     'Product Triad',
  'pa-section':        'PA Section',
  'philosophy':        'Philosophy',
  'cta-banner':        'CTA Banner',
  'menu-showcase':     'Menu Showcase',
  'image-break':       'Image Break',
  'cms-ice':           'CMS / In-Context Editing',
  'git-section':       'Git Versioning',
  'devex':             'Developer Experience',
  'cli-section':       'CLI Tool',
  'docs-layout':       'Documentation Layout',
};

function getDefaultSectionData(type: string): Record<string, unknown> {
  switch (type) {
    case 'hero':              return { title: 'New Hero', description: '' };
    case 'feature-grid':      return { sectionTitle: 'Features', cards: [] };
    case 'code-block':        return { lines: [] };
    case 'problem-statement': return { title: 'Problem Statement', siloGroups: [], paragraphs: [] };
    case 'pillars-grid':      return { title: 'Pillars', pillars: [] };
    case 'arch-layers':       return { title: 'Architecture', layers: [] };
    case 'product-triad':     return { title: 'Products', products: [] };
    case 'pa-section':        return { title: 'Section', subtitle: 'Subtitle', paragraphs: [{ text: '' }] };
    case 'philosophy':        return { title: 'Philosophy', quote: 'Your quote here.' };
    case 'cta-banner':        return { title: 'Call to Action', description: '', cliCommand: '' };
    case 'menu-showcase':     return { title: 'Menu', subtitle: '', courses: [] };
    case 'image-break':       return { image: { url: '', alt: '' }, caption: '' };
    case 'cms-ice':           return { title: 'In-Context Editing', description: '', callouts: [] };
    case 'git-section':       return { title: 'Your content is code.', description: '', points: [] };
    case 'devex':             return { title: 'Developer Experience', description: '', features: [] };
    case 'cli-section':       return { title: 'CLI Tool', description: '', steps: [] };
    case 'docs-layout':       return { pageTitle: 'Documentation', pageSubtitle: '', version: 'v1.0', groups: [] };
    default:                  return {};
  }
}

export const addSectionConfig: AddSectionConfig = {
  addableSectionTypes: [...addableSectionTypes],
  sectionTypeLabels,
  getDefaultSectionData,
};

END_OF_FILE_CONTENT
echo "Creating src/lib/base-schemas.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/lib/base-schemas.ts"
import { z } from 'zod';

/**
 * Image picker field: object { url, alt? } with ui:image-picker for Form Factory.
 * Use in section data and resolve with resolveAssetUrl(url, tenantId) in View.
 */
export const ImageSelectionSchema = z
  .object({
    url: z.string(),
    alt: z.string().optional(),
  }) 
  .describe('ui:image-picker');

/**
 * Base schemas shared by section capsules (CIP governance).
 * Capsules extend these for consistent anchorId, array items, and settings.
 */
export const BaseSectionData = z.object({
  anchorId: z.string().optional().describe('ui:text'),
});

export const BaseArrayItem = z.object({
  id: z.string().optional(),
});

export const BaseSectionSettingsSchema = z.object({
  paddingTop: z.enum(['none', 'sm', 'md', 'lg', 'xl', '2xl']).default('md').describe('ui:select'),
  paddingBottom: z.enum(['none', 'sm', 'md', 'lg', 'xl', '2xl']).default('md').describe('ui:select'),
  theme: z.enum(['dark', 'light', 'accent']).default('dark').describe('ui:select'),
  container: z.enum(['boxed', 'fluid']).default('boxed').describe('ui:select'),
});

export const CtaSchema = z.object({
  id: z.string().optional(),
  label: z.string().describe('ui:text'),
  href: z.string().describe('ui:text'),
  variant: z.enum(['primary', 'secondary']).default('primary').describe('ui:select'),
});

END_OF_FILE_CONTENT
echo "Creating src/lib/draftStorage.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/lib/draftStorage.ts"
/**
 * Tenant initial data — file-backed only (no localStorage).
 */

import type { PageConfig, SiteConfig } from '@/types';

export interface HydratedData {
  pages: Record<string, PageConfig>;
  siteConfig: SiteConfig;
}

/**
 * Return pages and siteConfig from file-backed data only.
 */
export function getHydratedData(
  _tenantId: string,
  filePages: Record<string, PageConfig>,
  fileSiteConfig: SiteConfig
): HydratedData {
  return {
    pages: { ...filePages },
    siteConfig: fileSiteConfig,
  };
}

END_OF_FILE_CONTENT
echo "Creating src/lib/getFilePages.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/lib/getFilePages.ts"
/**
 * Page registry from src/data/pages/*.json.
 * Add a .json file in that directory to add a page; no manual list in App.tsx.
 */
import type { PageConfig } from '@/types';

function slugFromPath(filePath: string): string {
  const base = filePath.split('/').pop() ?? filePath;
  const name = base.replace(/\.json$/i, '').trim();
  return name || 'page';
}

export function getFilePages(): Record<string, PageConfig> {
  const glob = import.meta.glob<{ default: unknown }>('@/data/pages/*.json', { eager: true });
  const bySlug = new Map<string, PageConfig>();
  for (const [path, mod] of Object.entries(glob)) {
    const slug = slugFromPath(path);
    const raw = mod?.default;
    if (raw == null || typeof raw !== 'object') continue;
    bySlug.set(slug, raw as PageConfig);
  }
  const slugs = Array.from(bySlug.keys()).sort((a, b) =>
    a === 'home' ? -1 : b === 'home' ? 1 : a.localeCompare(b)
  );
  const record: Record<string, PageConfig> = {};
  for (const slug of slugs) {
    const config = bySlug.get(slug);
    if (config) record[slug] = config;
  }
  return record;
}

END_OF_FILE_CONTENT
echo "Creating src/lib/schemas.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/lib/schemas.ts"
/**
 * SECTION_SCHEMAS registry — SSOT for FormFactory.
 */
export {
  BaseSectionData,
  BaseArrayItem,
  BaseSectionSettingsSchema,
  CtaSchema,
} from './base-schemas';

import { HeaderSchema } from '@/components/header';
import { FooterSchema } from '@/components/footer';
import { HeroSchema } from '@/components/hero';
import { FeatureGridSchema } from '@/components/feature-grid';
import { CodeBlockSchema } from '@/components/code-block';
import { ProblemStatementSchema } from '@/components/problem-statement';
import { PillarsGridSchema } from '@/components/pillars-grid';
import { ArchLayersSchema } from '@/components/arch-layers';
import { ProductTriadSchema } from '@/components/product-triad';
import { PaSectionSchema } from '@/components/pa-section';
import { PhilosophySchema } from '@/components/philosophy';
import { CtaBannerSchema } from '@/components/cta-banner';
import { MenuShowcaseSchema } from '@/components/menu-showcase';
import { ImageBreakSchema } from '@/components/image-break';

export const SECTION_SCHEMAS = {
  'header': HeaderSchema,
  'footer': FooterSchema,
  'hero': HeroSchema,
  'feature-grid': FeatureGridSchema,
  'code-block': CodeBlockSchema,
  'problem-statement': ProblemStatementSchema,
  'pillars-grid': PillarsGridSchema,
  'arch-layers': ArchLayersSchema,
  'product-triad': ProductTriadSchema,
  'pa-section': PaSectionSchema,
  'philosophy': PhilosophySchema,
  'cta-banner': CtaBannerSchema,
  'menu-showcase': MenuShowcaseSchema,
  'image-break': ImageBreakSchema,
} as const;

export type SectionType = keyof typeof SECTION_SCHEMAS;

END_OF_FILE_CONTENT
echo "Creating src/lib/utils.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/lib/utils.ts"
import { clsx, type ClassValue } from 'clsx';
import { twMerge } from 'tailwind-merge';

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}

END_OF_FILE_CONTENT
echo "Creating src/main.tsx..."
cat << 'END_OF_FILE_CONTENT' > "src/main.tsx"
import '@/types'; // TBP: load type augmentation from capsule-driven types
import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './App';
// ... resto del file

ReactDOM.createRoot(document.getElementById('root')!).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);




END_OF_FILE_CONTENT
mkdir -p "src/server"
echo "Creating src/types.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/types.ts"
import type { MenuItem } from '@jsonpages/core';
import type { HeaderData,           HeaderSettings }           from '@/components/header';
import type { FooterData,           FooterSettings }           from '@/components/footer';
import type { HeroData,             HeroSettings }             from '@/components/hero';
import type { FeatureGridData,      FeatureGridSettings }      from '@/components/feature-grid';
import type { CodeBlockData,        CodeBlockSettings }        from '@/components/code-block';
import type { ProblemStatementData, ProblemStatementSettings } from '@/components/problem-statement';
import type { PillarsGridData,      PillarsGridSettings }      from '@/components/pillars-grid';
import type { ArchLayersData,       ArchLayersSettings }       from '@/components/arch-layers';
import type { ProductTriadData,     ProductTriadSettings }     from '@/components/product-triad';
import type { PaSectionData,        PaSectionSettings }        from '@/components/pa-section';
import type { PhilosophyData,       PhilosophySettings }       from '@/components/philosophy';
import type { CtaBannerData,        CtaBannerSettings }        from '@/components/cta-banner';
import type { MenuShowcaseData,      MenuShowcaseSettings }     from '@/components/menu-showcase';
import type { ImageBreakData,       ImageBreakSettings }       from '@/components/image-break';
import type { CmsIceData,           CmsIceSettings }           from '@/components/cms-ice';
import type { GitSectionData,       GitSectionSettings }       from '@/components/git-section';
import type { DevexData,            DevexSettings }            from '@/components/devex';
import type { CliSectionData,       CliSectionSettings }       from '@/components/cli-section';
import type { DocsLayoutData,       DocsLayoutSettings }       from '@/components/docs-layout';

export type SectionComponentPropsMap = {
  'header':            { data: HeaderData;           settings?: HeaderSettings;           menu: MenuItem[] };
  'footer':            { data: FooterData;            settings?: FooterSettings            };
  'hero':              { data: HeroData;              settings?: HeroSettings              };
  'feature-grid':      { data: FeatureGridData;       settings?: FeatureGridSettings       };
  'code-block':        { data: CodeBlockData;         settings?: CodeBlockSettings         };
  'problem-statement': { data: ProblemStatementData;  settings?: ProblemStatementSettings  };
  'pillars-grid':      { data: PillarsGridData;       settings?: PillarsGridSettings       };
  'arch-layers':       { data: ArchLayersData;        settings?: ArchLayersSettings        };
  'product-triad':     { data: ProductTriadData;      settings?: ProductTriadSettings      };
  'pa-section':        { data: PaSectionData;         settings?: PaSectionSettings         };
  'philosophy':        { data: PhilosophyData;        settings?: PhilosophySettings        };
  'cta-banner':        { data: CtaBannerData;         settings?: CtaBannerSettings         };
  'menu-showcase':     { data: MenuShowcaseData;      settings?: MenuShowcaseSettings      };
  'image-break':       { data: ImageBreakData;        settings?: ImageBreakSettings        };
  'cms-ice':           { data: CmsIceData;            settings?: CmsIceSettings            };
  'git-section':       { data: GitSectionData;        settings?: GitSectionSettings        };
  'devex':             { data: DevexData;             settings?: DevexSettings             };
  'cli-section':       { data: CliSectionData;        settings?: CliSectionSettings        };
  'docs-layout':       { data: DocsLayoutData;        settings?: DocsLayoutSettings        };
};

declare module '@jsonpages/core' {
  export interface SectionDataRegistry {
    'header':            HeaderData;
    'footer':            FooterData;
    'hero':              HeroData;
    'feature-grid':      FeatureGridData;
    'code-block':        CodeBlockData;
    'problem-statement': ProblemStatementData;
    'pillars-grid':      PillarsGridData;
    'arch-layers':       ArchLayersData;
    'product-triad':     ProductTriadData;
    'pa-section':        PaSectionData;
    'philosophy':        PhilosophyData;
    'cta-banner':        CtaBannerData;
    'menu-showcase':     MenuShowcaseData;
    'image-break':       ImageBreakData;
    'cms-ice':           CmsIceData;
    'git-section':       GitSectionData;
    'devex':             DevexData;
    'cli-section':       CliSectionData;
    'docs-layout':       DocsLayoutData;
  }
  export interface SectionSettingsRegistry {
    'header':            HeaderSettings;
    'footer':            FooterSettings;
    'hero':              HeroSettings;
    'feature-grid':      FeatureGridSettings;
    'code-block':        CodeBlockSettings;
    'problem-statement': ProblemStatementSettings;
    'pillars-grid':      PillarsGridSettings;
    'arch-layers':       ArchLayersSettings;
    'product-triad':     ProductTriadSettings;
    'pa-section':        PaSectionSettings;
    'philosophy':        PhilosophySettings;
    'cta-banner':        CtaBannerSettings;
    'image-break':       ImageBreakSettings;
    'menu-showcase':     MenuShowcaseSettings;
    'cms-ice':           CmsIceSettings;
    'git-section':       GitSectionSettings;
    'devex':             DevexSettings;
    'cli-section':       CliSectionSettings;
    'docs-layout':       DocsLayoutSettings;
  }
}

export * from '@jsonpages/core';

END_OF_FILE_CONTENT
echo "Creating src/vite-env.d.ts..."
cat << 'END_OF_FILE_CONTENT' > "src/vite-env.d.ts"
/// <reference types="vite/client" />

declare module '*?inline' {
  const content: string;
  export default content;
}



END_OF_FILE_CONTENT
echo "Creating tsconfig.app.json..."
cat << 'END_OF_FILE_CONTENT' > "tsconfig.app.json"
{
  "compilerOptions": {
    "tsBuildInfoFile": "./node_modules/.tmp/tsconfig.app.tsbuildinfo",
    "target": "ES2022",
    "useDefineForClassFields": true,
    "lib": ["ES2022", "DOM", "DOM.Iterable"],
    "module": "ESNext",
    "types": ["vite/client"],
    "skipLibCheck": true,

    /* Bundler mode */
    "moduleResolution": "bundler",
    "allowImportingTsExtensions": true,
    "verbatimModuleSyntax": true,
    "moduleDetection": "force",
    "noEmit": true,
    "jsx": "react-jsx",

    /* Linting */
    "strict": true,
    "noUnusedLocals": true,
    "noUnusedParameters": true,
    "erasableSyntaxOnly": true,
    "noFallthroughCasesInSwitch": true,
    "noUncheckedSideEffectImports": true
  },
  "include": ["src"]
}

END_OF_FILE_CONTENT
echo "Creating tsconfig.json..."
cat << 'END_OF_FILE_CONTENT' > "tsconfig.json"
{
  "compilerOptions": {
    "target": "ES2020",
    "useDefineForClassFields": true,
    "lib": ["ES2020", "DOM", "DOM.Iterable"],
    "module": "ESNext",
    "skipLibCheck": true,
    "moduleResolution": "bundler",
    "allowImportingTsExtensions": true,
    "resolveJsonModule": true,
    "isolatedModules": true,
    "noEmit": true,
    "jsx": "react-jsx",
    "strict": true,
    "noUnusedLocals": true,
    "noUnusedParameters": true,
    "noFallthroughCasesInSwitch": true,
    "baseUrl": ".",
    "paths": {
      "@/*": ["./src/*"]
    }
  },
  "include": ["src"]
}
END_OF_FILE_CONTENT
echo "Creating tsconfig.node.json..."
cat << 'END_OF_FILE_CONTENT' > "tsconfig.node.json"
{
  "compilerOptions": {
    "tsBuildInfoFile": "./node_modules/.tmp/tsconfig.node.tsbuildinfo",
    "target": "ES2023",
    "lib": ["ES2023"],
    "module": "ESNext",
    "types": ["node"],
    "skipLibCheck": true,

    /* Bundler mode */
    "moduleResolution": "bundler",
    "allowImportingTsExtensions": true,
    "verbatimModuleSyntax": true,
    "moduleDetection": "force",
    "noEmit": true,

    /* Linting */
    "strict": true,
    "noUnusedLocals": true,
    "noUnusedParameters": true,
    "erasableSyntaxOnly": true,
    "noFallthroughCasesInSwitch": true,
    "noUncheckedSideEffectImports": true
  },
  "include": ["vite.config.ts"]
}

END_OF_FILE_CONTENT
echo "Creating vercel.json..."
cat << 'END_OF_FILE_CONTENT' > "vercel.json"
{
  "rewrites": [
    {
      "source": "/(.*)",
      "destination": "/index.html"
    }
  ],
  "headers": [
    {
      "source": "/assets/(.*)",
      "headers": [
        {
          "key": "Cache-Control",
          "value": "public, max-age=31536000, immutable"
        }
      ]
    }
  ]
}
END_OF_FILE_CONTENT
echo "Creating vite.config.ts..."
cat << 'END_OF_FILE_CONTENT' > "vite.config.ts"
/**
 * Generated by @jsonpages/cli. Dev server API: /api/save-to-file, /api/upload-asset, /api/list-assets.
 */
import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import tailwindcss from '@tailwindcss/vite';
import path from 'path';
import fs from 'fs';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));

const ASSETS_IMAGES_DIR = path.resolve(__dirname, 'public', 'assets', 'images');
const DATA_CONFIG_DIR = path.resolve(__dirname, 'src', 'data', 'config');
const DATA_PAGES_DIR = path.resolve(__dirname, 'src', 'data', 'pages');
const IMAGE_EXT = new Set(['.jpg', '.jpeg', '.png', '.gif', '.webp', '.svg', '.avif']);
const IMAGE_MIMES = new Set([
  'image/jpeg', 'image/png', 'image/webp', 'image/gif', 'image/svg+xml', 'image/avif',
]);
const MAX_FILE_SIZE_BYTES = 5 * 1024 * 1024; // 5MB

function safeFilename(original, mimeType) {
  const base = (original.replace(/\.[^.]+$/, '').replace(/[^a-zA-Z0-9-_]/g, '_').slice(0, 128)) || 'image';
  const ext = original.includes('.') ? path.extname(original).toLowerCase() : (mimeType?.startsWith('image/') ? `.${(mimeType.split('/')[1] || 'png').replace('jpeg', 'jpg')}` : '.png');
  return `${Date.now()}-${base}${IMAGE_EXT.has(ext) ? ext : '.png'}`;
}

function listImagesInDir(dir, urlPrefix) {
  const list = [];
  if (!fs.existsSync(dir)) return list;
  for (const name of fs.readdirSync(dir)) {
    if (IMAGE_EXT.has(path.extname(name).toLowerCase())) list.push({ id: name, url: `${urlPrefix}/${name}`, alt: name, tags: [] });
  }
  return list;
}

function sendJson(res, status, body) {
  res.writeHead(status, { 'Content-Type': 'application/json' });
  res.end(JSON.stringify(body));
}

export default defineConfig({
  plugins: [
    react(),
    tailwindcss(),
    {
      name: 'upload-asset-api',
      configureServer(server) {
        server.middlewares.use((req, res, next) => {
          if (req.method === 'GET' && req.url === '/api/list-assets') {
            try { sendJson(res, 200, listImagesInDir(ASSETS_IMAGES_DIR, '/assets/images')); } catch (e) { sendJson(res, 500, { error: e?.message || 'List failed' }); }
            return;
          }
          const pathname = (req.url || '').split('?')[0];
          if (req.method === 'POST' && pathname === '/api/save-to-file') {
            const chunks = [];
            req.on('data', (chunk) => chunks.push(chunk));
            req.on('end', () => {
              try {
                const raw = Buffer.concat(chunks).toString('utf8');
                if (!raw.trim()) { sendJson(res, 400, { error: 'Empty body' }); return; }
                const body = JSON.parse(raw);
                const { projectState, slug } = body;
                if (!projectState || typeof slug !== 'string') { sendJson(res, 400, { error: 'Missing projectState or slug' }); return; }
                if (!fs.existsSync(DATA_CONFIG_DIR)) fs.mkdirSync(DATA_CONFIG_DIR, { recursive: true });
                if (!fs.existsSync(DATA_PAGES_DIR)) fs.mkdirSync(DATA_PAGES_DIR, { recursive: true });
                if (projectState.site != null) fs.writeFileSync(path.join(DATA_CONFIG_DIR, 'site.json'), JSON.stringify(projectState.site, null, 2), 'utf8');
                if (projectState.theme != null) fs.writeFileSync(path.join(DATA_CONFIG_DIR, 'theme.json'), JSON.stringify(projectState.theme, null, 2), 'utf8');
                if (projectState.menu != null) fs.writeFileSync(path.join(DATA_CONFIG_DIR, 'menu.json'), JSON.stringify(projectState.menu, null, 2), 'utf8');
                if (projectState.page != null) {
                  const safeSlug = (slug.replace(/[^a-zA-Z0-9-_]/g, '_') || 'page');
                  fs.writeFileSync(path.join(DATA_PAGES_DIR, `${safeSlug}.json`), JSON.stringify(projectState.page, null, 2), 'utf8');
                }
                sendJson(res, 200, { ok: true });
              } catch (e) { sendJson(res, 500, { error: e?.message || 'Save to file failed' }); }
            });
            req.on('error', () => sendJson(res, 500, { error: 'Request error' }));
            return;
          }
          if (req.method !== 'POST' || req.url !== '/api/upload-asset') return next();
          const chunks = [];
          req.on('data', (chunk) => chunks.push(chunk));
          req.on('end', () => {
            try {
              const body = JSON.parse(Buffer.concat(chunks).toString('utf8'));
              const { filename, mimeType, data } = body;
              if (!filename || typeof data !== 'string') { sendJson(res, 400, { error: 'Missing filename or data' }); return; }
              const buf = Buffer.from(data, 'base64');
              if (buf.length > MAX_FILE_SIZE_BYTES) { sendJson(res, 413, { error: 'File too large. Max 5MB.' }); return; }
              if (mimeType && !IMAGE_MIMES.has(mimeType)) { sendJson(res, 400, { error: 'Invalid file type' }); return; }
              const name = safeFilename(filename, mimeType);
              if (!fs.existsSync(ASSETS_IMAGES_DIR)) fs.mkdirSync(ASSETS_IMAGES_DIR, { recursive: true });
              fs.writeFileSync(path.join(ASSETS_IMAGES_DIR, name), buf);
              sendJson(res, 200, { url: `/assets/images/${name}` });
            } catch (e) { sendJson(res, 500, { error: e?.message || 'Upload failed' }); }
          });
          req.on('error', () => sendJson(res, 500, { error: 'Request error' }));
        });
      },
    },
  ],
  resolve: { alias: { '@': path.resolve(__dirname, './src') } },
});

END_OF_FILE_CONTENT
