-- ============================================================================
-- Archivo: create_views.sql
-- Proyecto: QAPITAL Real Estate Analytics
-- Descripción: Vistas analíticas pre-agregadas para Power BI
-- ============================================================================

-- Vista: Ventas con contexto completo
CREATE VIEW vw_sales_detail AS
SELECT 
    s.sale_id,
    s.sale_date,
    s.sale_year,
    s.sale_month,
    s.sale_price_usd,
    p.property_type,
    p.size_m2,
    p.bedrooms,
    p.bathrooms,
    p.list_price_usd,
    pr.project_name,
    pr.city,
    pr.region AS project_region,
    pr.launch_year,
    b.broker_name,
    b.broker_region,
    c.full_name AS client_name,
    c.email AS client_email,
    c.region AS client_region
FROM fact_sales s
LEFT JOIN dim_property p ON s.property_key = p.property_key
LEFT JOIN dim_project pr ON p.project_id = pr.project_id
LEFT JOIN dim_broker b ON s.broker_key = b.broker_key
LEFT JOIN dim_client c ON s.client_key = c.client_key;

-- Vista: Leads con contexto completo
CREATE VIEW vw_leads_detail AS
SELECT 
    l.lead_id,
    l.lead_date,
    l.lead_year,
    l.lead_month,
    l.lead_source,
    cp.campaign_name,
    cp.channel,
    cp.budget_usd,
    p.property_type,
    p.size_m2,
    p.list_price_usd,
    pr.project_name,
    pr.city,
    c.full_name AS client_name,
    c.region AS client_region
FROM fact_leads l
LEFT JOIN dim_campaign cp ON l.campaign_key = cp.campaign_key
LEFT JOIN dim_property p ON l.property_key = p.property_key
LEFT JOIN dim_project pr ON p.project_id = pr.project_id
LEFT JOIN dim_client c ON l.client_key = c.client_key;