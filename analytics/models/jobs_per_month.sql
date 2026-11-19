select 
    DATE_Trunc('month', search_date) AS month,
    search_term as role,
    COUNT(*) AS postings
from {{ref('job_postings')}}
Group BY month,role
ORDER BY month,role