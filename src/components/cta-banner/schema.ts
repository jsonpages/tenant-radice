import { z } from 'zod';
import { BaseSectionData, CtaSchema, ImageSelectionSchema } from '@/lib/base-schemas';

export const CtaBannerSchema = BaseSectionData.extend({
  label: z.string().optional().describe('ui:text'),
  title: z.string().describe('ui:text'),
  description: z.string().optional().describe('ui:textarea'),
  backgroundImage: ImageSelectionSchema.default({ url: '', alt: '' }),
  ctas: z.array(CtaSchema).optional().describe('ui:list'),
});
