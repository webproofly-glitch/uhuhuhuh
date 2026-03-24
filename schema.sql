-- Neon PostgreSQL Schema for Coinlarp Licenses
-- Run this in your Neon database console

CREATE TABLE IF NOT EXISTS licenses (
    id SERIAL PRIMARY KEY,
    license_key TEXT UNIQUE NOT NULL,
    plan TEXT NOT NULL,
    duration_days INTEGER,
    created_at TEXT DEFAULT CURRENT_TIMESTAMP,
    activated_at TEXT,
    expires_at TEXT,
    device_id TEXT,
    is_active INTEGER DEFAULT 1
);

-- Create index for faster lookups
CREATE INDEX IF NOT EXISTS idx_license_key ON licenses(license_key);
CREATE INDEX IF NOT EXISTS idx_is_active ON licenses(is_active);