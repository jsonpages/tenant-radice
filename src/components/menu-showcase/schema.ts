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
