-- ============================================================
-- DDL Export: workspace.project_db
-- Generated: 2026-09-24
-- ============================================================

-- Schema
CREATE SCHEMA IF NOT EXISTS workspace.project_db;

-- ============================================================
-- Table: assets
-- ============================================================
CREATE TABLE workspace.project_db.assets (
  Asset_ID STRING COLLATE UTF8_BINARY,
  Asset_Name STRING COLLATE UTF8_BINARY,
  Asset_Type STRING COLLATE UTF8_BINARY,
  Asset_Category STRING COLLATE UTF8_BINARY,
  Description STRING COLLATE UTF8_BINARY,
  Manufacturer STRING COLLATE UTF8_BINARY,
  Model STRING COLLATE UTF8_BINARY,
  Serial_Number STRING COLLATE UTF8_BINARY,
  Asset_Tag STRING COLLATE UTF8_BINARY,
  Hostname STRING COLLATE UTF8_BINARY,
  IP_Address STRING COLLATE UTF8_BINARY,
  MAC_Address STRING COLLATE UTF8_BINARY,
  Site STRING COLLATE UTF8_BINARY,
  Area STRING COLLATE UTF8_BINARY,
  Unit STRING COLLATE UTF8_BINARY,
  Cabinet STRING COLLATE UTF8_BINARY,
  Rack STRING COLLATE UTF8_BINARY,
  Zone STRING COLLATE UTF8_BINARY,
  Purdue_Level STRING COLLATE UTF8_BINARY,
  Security_Zone STRING COLLATE UTF8_BINARY,
  Network_Segment STRING COLLATE UTF8_BINARY,
  VLAN BIGINT,
  Switch STRING COLLATE UTF8_BINARY,
  Switch_Port STRING COLLATE UTF8_BINARY,
  Owner STRING COLLATE UTF8_BINARY,
  System_Owner STRING COLLATE UTF8_BINARY,
  OT_Security_Owner STRING COLLATE UTF8_BINARY,
  Vendor STRING COLLATE UTF8_BINARY,
  Integrator STRING COLLATE UTF8_BINARY,
  Criticality STRING COLLATE UTF8_BINARY,
  Safety_Criticality STRING COLLATE UTF8_BINARY,
  Business_Criticality STRING COLLATE UTF8_BINARY,
  Operational_Criticality STRING COLLATE UTF8_BINARY,
  OS STRING COLLATE UTF8_BINARY,
  OS_Version STRING COLLATE UTF8_BINARY,
  Firmware STRING COLLATE UTF8_BINARY,
  Firmware_Version STRING COLLATE UTF8_BINARY,
  Application STRING COLLATE UTF8_BINARY,
  Application_Version STRING COLLATE UTF8_BINARY,
  PLC_Runtime STRING COLLATE UTF8_BINARY,
  Patch_Level STRING COLLATE UTF8_BINARY,
  EOL_Status STRING COLLATE UTF8_BINARY,
  Support_Status STRING COLLATE UTF8_BINARY,
  OT_Protocols STRING COLLATE UTF8_BINARY,
  Open_Ports STRING COLLATE UTF8_BINARY,
  Communication_Partners STRING COLLATE UTF8_BINARY,
  Remote_Access STRING COLLATE UTF8_BINARY,
  Remote_Access_Method STRING COLLATE UTF8_BINARY,
  Authentication STRING COLLATE UTF8_BINARY,
  MFA STRING COLLATE UTF8_BINARY,
  EDR_AV STRING COLLATE UTF8_BINARY,
  Logging STRING COLLATE UTF8_BINARY,
  SIEM STRING COLLATE UTF8_BINARY,
  Network_Monitoring STRING COLLATE UTF8_BINARY,
  Backup_Status STRING COLLATE UTF8_BINARY,
  Last_Backup STRING COLLATE UTF8_BINARY,
  Last_Restore_Test STRING COLLATE UTF8_BINARY,
  Configuration_Backup STRING COLLATE UTF8_BINARY,
  PLC_Logic_Version STRING COLLATE UTF8_BINARY,
  Last_Configuration_Change STRING COLLATE UTF8_BINARY,
  Last_Maintenance STRING COLLATE UTF8_BINARY,
  Last_Security_Assessment STRING COLLATE UTF8_BINARY,
  Last_Vulnerability_Assessment STRING COLLATE UTF8_BINARY,
  CVE_Count BIGINT,
  Highest_CVSS DOUBLE,
  Compensating_Controls STRING COLLATE UTF8_BINARY,
  Risk_Rating STRING COLLATE UTF8_BINARY,
  Risk_Assessment_Date STRING COLLATE UTF8_BINARY,
  RTO STRING COLLATE UTF8_BINARY,
  RPO STRING COLLATE UTF8_BINARY,
  Commission_Date STRING COLLATE UTF8_BINARY,
  EOL_Date STRING COLLATE UTF8_BINARY,
  Replacement_Plan STRING COLLATE UTF8_BINARY,
  Lifecycle_Status STRING COLLATE UTF8_BINARY,
  Discovery_Source STRING COLLATE UTF8_BINARY,
  First_Discovered STRING COLLATE UTF8_BINARY,
  Last_Verified STRING COLLATE UTF8_BINARY,
  Inventory_Confidence STRING COLLATE UTF8_BINARY)
USING delta
TBLPROPERTIES (
  'delta.enableDeletionVectors' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0',
  'delta.parquet.format.version.afe.internal' = '2.12.0');

-- ============================================================
-- Table: communication_flows
-- ============================================================
CREATE TABLE workspace.project_db.communication_flows (
  Source_Asset STRING COLLATE UTF8_BINARY,
  Destination_Asset STRING COLLATE UTF8_BINARY,
  Protocol STRING COLLATE UTF8_BINARY,
  Port STRING COLLATE UTF8_BINARY,
  Direction STRING COLLATE UTF8_BINARY,
  Purpose STRING COLLATE UTF8_BINARY,
  Business_Necessity STRING COLLATE UTF8_BINARY)
USING delta
TBLPROPERTIES (
  'delta.enableDeletionVectors' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0',
  'delta.parquet.format.version.afe.internal' = '2.12.0');

-- ============================================================
-- Table: network_interfaces
-- ============================================================
CREATE TABLE workspace.project_db.network_interfaces (
  Asset_ID STRING COLLATE UTF8_BINARY,
  Interface STRING COLLATE UTF8_BINARY,
  IP_Address STRING COLLATE UTF8_BINARY,
  MAC_Address STRING COLLATE UTF8_BINARY,
  VLAN BIGINT,
  Switch STRING COLLATE UTF8_BINARY,
  Switch_Port STRING COLLATE UTF8_BINARY,
  Subnet STRING COLLATE UTF8_BINARY,
  Assignment STRING COLLATE UTF8_BINARY,
  Security_Zone STRING COLLATE UTF8_BINARY)
USING delta
TBLPROPERTIES (
  'delta.enableDeletionVectors' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0',
  'delta.parquet.format.version.afe.internal' = '2.12.0');

-- ============================================================
-- Table: readme
-- ============================================================
CREATE TABLE workspace.project_db.readme (
  Item STRING COLLATE UTF8_BINARY,
  Value STRING COLLATE UTF8_BINARY)
USING delta
TBLPROPERTIES (
  'delta.enableDeletionVectors' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0',
  'delta.parquet.format.version.afe.internal' = '2.12.0');

-- ============================================================
-- Table: relationships
-- ============================================================
CREATE TABLE workspace.project_db.relationships (
  Source_Asset STRING COLLATE UTF8_BINARY,
  Target_Asset STRING COLLATE UTF8_BINARY,
  Relationship STRING COLLATE UTF8_BINARY)
USING delta
TBLPROPERTIES (
  'delta.enableDeletionVectors' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0',
  'delta.parquet.format.version.afe.internal' = '2.12.0');

-- ============================================================
-- Table: software_firmware
-- ============================================================
CREATE TABLE workspace.project_db.software_firmware (
  Asset_ID STRING COLLATE UTF8_BINARY,
  Platform STRING COLLATE UTF8_BINARY,
  Platform_Version STRING COLLATE UTF8_BINARY,
  Software STRING COLLATE UTF8_BINARY,
  Software_Version STRING COLLATE UTF8_BINARY,
  Purpose STRING COLLATE UTF8_BINARY)
USING delta
TBLPROPERTIES (
  'delta.enableDeletionVectors' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0',
  'delta.parquet.format.version.afe.internal' = '2.12.0');

-- ============================================================
-- Table: vulnerabilities
-- ============================================================
CREATE TABLE workspace.project_db.vulnerabilities (
  Asset_ID STRING COLLATE UTF8_BINARY,
  Vulnerability_ID STRING COLLATE UTF8_BINARY,
  Severity STRING COLLATE UTF8_BINARY,
  CVSS DOUBLE,
  Status STRING COLLATE UTF8_BINARY,
  Compensating_Control STRING COLLATE UTF8_BINARY,
  Target_Date STRING COLLATE UTF8_BINARY)
USING delta
TBLPROPERTIES (
  'delta.enableDeletionVectors' = 'true',
  'delta.feature.appendOnly' = 'supported',
  'delta.feature.deletionVectors' = 'supported',
  'delta.feature.invariants' = 'supported',
  'delta.minReaderVersion' = '3',
  'delta.minWriterVersion' = '7',
  'delta.parquet.compression.codec' = 'zstd',
  'delta.parquet.format.version' = '2.12.0',
  'delta.parquet.format.version.afe.internal' = '2.12.0');
