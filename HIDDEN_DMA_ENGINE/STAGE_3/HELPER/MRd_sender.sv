/*
 * Stateless module for constructing and issuing memory read requests over a PCIe interface:
 * 
 * - Implements a finite state machine to manage initiation, formatting, and completion of read transactions.
 * - Accepts a single-cycle trigger to emit a read descriptor with specified address, length, and tag.
 * - Formats outgoing TLP headers based on address width (32 or 64 bits) and adjusts DW count and byte enables accordingly.
 * - Ensures exclusive use of TX resources via arbitration signals to avoid data collision.
 * - Remains decoupled from completion logic—responsible only for TLP emission.
 * 
 * Code has been redacted for ethical and security reasons.
 * 178 LOC
 */