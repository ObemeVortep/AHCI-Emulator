/*
 * Definitions for AHCI-compatible register structures used in controller and port emulation:
 *
 * - Declares packed structures for global and per-port registers, with offsets and access modes.
 * - Global structure includes host control and interrupt registers.
 * - Port structure models command engine state and link status registers.
 * - Includes auxiliary structure for counting register access events, useful for debugging.
 * - Omits unimplemented or reserved fields to simplify synthesis and emulation logic.
 *
 * Code has been redacted for ethical and security reasons.
 * 65 LOC
 */