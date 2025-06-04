/*
 * Definitions for structured PCIe AXI-stream signal bundles:
 *
 * - Declares reusable packed structs to represent PCIe RX/TX signal groups.
 * - Provides variants tailored to different subsystems (e.g., core interface, DMA, SATA).
 * - Encapsulates protocol-specific AXI stream fields: data, strobe, valid, ready, user signals.
 * - Promotes readability and consistency in module interfaces by abstracting raw port wires.
 * - Facilitates modular signal assignment and bus splitting in larger designs.
 *
 * Code has been redacted for ethical and security reasons.
 * 42 LOC
 */