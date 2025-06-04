/*
 * Module responsible for maintaining the IDENTIFY DEVICE DATA structure.
 *
 * - Stores static and dynamic disk identity/configuration (512 words).
 * - Updates certain fields in response to specific SATA commands (e.g., SECURITY_FREEZE_LOCK, ENABLE_SMART).
 * - Automatically recalculates checksum byte (word 255) whenever a modification is made.
 *
 * Code has been redacted for ethical and security reasons.
 * 291 LOC
 */