# oro-compliance

GDPR/PII compliance module for the ourochronos ecosystem.

## Features

- **Data Deletion**: GDPR Article 17 (Right to Erasure) compliant deletion with cryptographic erasure
- **PII Scanning**: Detect and block PII (emails, phone numbers, SSNs, credit cards, etc.)
- **Tombstone Records**: Federation-aware deletion propagation with audit trails

## Installation

```bash
pip install oro-compliance
```

## Usage

```python
from oro_compliance import delete_user_data, scan_for_pii, DeletionReason

# Scan text for PII
matches = scan_for_pii("Contact me at user@example.com")

# Delete user data with compliance audit trail
await delete_user_data(user_id, reason=DeletionReason.USER_REQUEST)
```

## Development

```bash
pip install -e ".[dev]"
ruff check src/ tests/
mypy src/
pytest tests/ -m "not integration"
```
