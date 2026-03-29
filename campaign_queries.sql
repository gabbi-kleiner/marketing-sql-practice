-- SQL Practice for Digital Marketing Analytics

-- 1. Calculate CTR (Click Through Rate) by campaign
SELECT
    campaign_name,
    SUM(clicks) / SUM(impressions) AS ctr
FROM ad_campaigns
GROUP BY campaign_name;

-- 2. Calculate CPM (Cost per 1000 impressions) by campaign
SELECT
    campaign_name,
    (SUM(spend) / SUM(impressions)) * 1000 AS cpm
FROM ad_campaigns
GROUP BY campaign_name;

-- 3. ROAS (Return on Ad Spend) ranking
SELECT
    campaign_name,
    SUM(revenue) / SUM(spend) AS roas
FROM ad_campaigns
GROUP BY campaign_name
ORDER BY roas DESC;

-- 4. Channel performance summary
SELECT
    channel,
    SUM(impressions) AS total_impressions,
    SUM(clicks) AS total_clicks,
    SUM(spend) AS total_spend,
    SUM(revenue) AS total_revenue
FROM ad_campaigns
GROUP BY channel;