import { z } from 'zod';
import { ImageBreakSchema, ImageBreakSettingsSchema } from './schema';

export type ImageBreakData = z.infer<typeof ImageBreakSchema>;
export type ImageBreakSettings = z.infer<typeof ImageBreakSettingsSchema>;
