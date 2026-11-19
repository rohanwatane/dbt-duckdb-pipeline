select 
    job_location,
    count(*) AS postings
from {{ref('job_postings')}}
Group by job_location
order by postings DESC
Limit 10