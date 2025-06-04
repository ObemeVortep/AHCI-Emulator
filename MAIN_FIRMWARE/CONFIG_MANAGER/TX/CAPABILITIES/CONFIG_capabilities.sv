/*
 * BRAM-based storage module for emulating user-defined PCIe capability structures:
 *
 * - Organizes legacy and extended capability registers into a compact addressable array.
 * - Supports synchronous read access with cycle-latency alignment for PCIe CfgRd responses.
 * - Rejects unsupported register writes to preserve architectural integrity.
 * - Handles PCIe DW addressing with offset normalization for decoding legacy vs extended capabilities.
 * - Prepopulates static data fields emulating standard PCIe capability structures.
 *
 * Code has been redacted for ethical and security reasons.
 * 99 LOC
 */