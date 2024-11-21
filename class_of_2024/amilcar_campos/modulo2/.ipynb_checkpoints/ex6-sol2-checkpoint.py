from diagrams import Cluster, Diagram
from diagrams.outscale.network import InternetService
from diagrams.gcp.analytics import Composer, BigQuery, Pubsub
from diagrams.gcp.storage import GCS

with Diagram("ex6-sol2", show = False):
    airbnb =  InternetService("insideairbnb API")
    
    with Cluster("ETL with cloud Composer (Airflow)"):
            composer = Composer("Composer Extract")
            composer >> GCS("GCS Datalake Load raw")
            composer >> BigQuery("Bigquery Load raw")
            bq_load = BigQuery("Bigquery Load cleaned")
            composer >> Composer("Composer Transform") >> bq_load
        
    airbnb >> composer
    bq_load >> Pubsub("PubSub notification")
