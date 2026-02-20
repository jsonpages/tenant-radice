import { z } from 'zod';
import { MenuShowcaseSchema, MenuShowcaseSettingsSchema } from './schema';

export type MenuShowcaseData = z.infer<typeof MenuShowcaseSchema>;
export type MenuShowcaseSettings = z.infer<typeof MenuShowcaseSettingsSchema>;
