/*
 * RX parser for PCIe Configuration Read and Write Requests (CfgRd0 / CfgWr0):
 *
 * - Detects and classifies PCIe TLPs as configuration read or write requests based on type and format fields.
 * - Extracts required metadata fields from headers, including register offset, requester ID, tag.
 * - Separately queues CfgRd and CfgWr into dedicated FIFOs for further processing by the TX completion logic.
 * - Designed to isolate RX-side logic of the configuration manager module.
 *
 * Code has been redacted for ethical and security reasons.
 * 267 LOC
 */