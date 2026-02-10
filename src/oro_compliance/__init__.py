"""GDPR/PII compliance module for the ourochronos ecosystem.

Provides GDPR-compliant data handling including:
- Data deletion with cryptographic erasure
- PII scanning and blocking
- Tombstone records for federation propagation
"""

__version__ = "0.1.0"

from .deletion import (
    DeletionReason,
    Tombstone,
    create_tombstone,
    delete_user_data,
)
from .pii_scanner import (
    PIIMatch,
    PIIScanner,
    PIIType,
    scan_for_pii,
)

__all__ = [
    "delete_user_data",
    "create_tombstone",
    "DeletionReason",
    "Tombstone",
    "PIIScanner",
    "PIIMatch",
    "PIIType",
    "scan_for_pii",
]
