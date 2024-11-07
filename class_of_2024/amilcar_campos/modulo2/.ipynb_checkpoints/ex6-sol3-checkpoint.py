from diagrams import Cluster, Diagram
from diagrams.gcp.analytics import BigQuery, Dataflow, PubSub, Composer
from diagrams.gcp.storage import GCS
from diagrams.gcp.database import SQL
from diagrams.gcp.ml import AIPlatform
from diagrams.gcp.api import APIGateway
from diagrams.gcp.compute import Run

with Diagram("ex6-sol3", show=False):

    with Cluster("Data Sources"):
        sales = SQL("Business sales")
        api = APIGateway("External APIs")
        ms = Run("Microservices")
    
    with Cluster("Data Lakehouse"):
        composer = Composer("Cloud Composer")
        gcs = GCS("GCS")
        bq = BigQuery("BigQuery")
        composer >> bq >> gcs
        composer >> gcs

    sales >> composer
    api >> composer
    ms >> composer

    with Cluster("Machine Learning"):
        ai = AIPlatform("Vertex AI models")

    bq >> ai
        
    with Cluster("BI Tools"):
        looker = BigQuery("Looker")
        looker_studio = BigQuery("Looker Studio")

    bq >> looker
    bq >> looker_studio

    ai >> looker
    ai >> looker_studio
    