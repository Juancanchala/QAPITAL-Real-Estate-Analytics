# QAPITAL Real Estate Analytics Platform
End-to-end data analytics solution for real estate sales, marketing and inventory management built on Microsoft Fabric.

## Project Overview
Automated data platform reducing reporting time from 48 hours to 3 hours through batch processing and real-time dashboards.

### Tech Stack
- **Microsoft Fabric** (OneLake, Data Factory, Lakehouse, Warehouse)
- **PySpark** (Data transformations)
- **Power BI** (Dashboards)
- **Azure Data Lake Storage Gen2** (Source data)

### Architecture
1_BDRLgWSqs0FYrhXLFMzvRQ.webp


## Data Model
1_uxtc2natEAoV_GlFpPfF_w.webp

**Medallion Architecture:**
- Bronze: Raw ingestion from ADLS
- Silver: Cleaned and standardized data
- Gold: Star schema (5 dimensions + 2 facts)

### Dimensions
- dim_broker
- dim_client
- dim_project
- dim_property
- dim_campaign

### Facts
- fact_sales (30 transactions, $6M total)
- fact_leads (150K leads, $362K budget)

## Pipeline
1_SYGqvzr-DnTlMx-nPhyNlw.webp
**PL_MASTER_DAILY_BATCH** runs daily at 00:30 AM:
1. Copy Data: ADLS → Bronze
2. Notebook: Bronze → Silver
3. Notebook: Silver → Gold

## Dashboards
- Sales Performance
1_dLkXiFM2upvTNK0VqNsQig.webp
- Marketing ROI
1_HG1getX8BhOQYAWuraobYQ.webp
- Pricing & Inventory
1_8LH3S-yDhL7mGB7e-l9p4w.webp

## Setup Instructions
1. Clone repository
2. Import pipeline JSON to Fabric Data Factory
3. Import notebooks to Fabric Lakehouse
4. Configure ADLS connection with SAS token
5. Run pipeline manually for initial load

## Author
Juan Camilo Canchala hernández 
[www.linkedin.com/in/ingjuancanchala](https://www.linkedin.com/posts/ingjuancanchala_github-juancanchalaqapital-real-estate-analytics-activity-7380824281728831488-d6pS?utm_source=share&utm_medium=member_desktop&rcm=ACoAAD3QUF0Bx7F1BOD3xb6WINduF_31kKk-rV0)

https://medium.com/@juan.canchala/de-excel-a-insights-en-tiempo-real-construyendo-una-plataforma-data-driven-en-microsoft-fabric-461c5dfe7e57
