from app import app
from services import get_message

def test_home():
    client = app.test_client()
    response = client.get("/")

    assert response.status_code == 200
    assert response.data.decode() == get_message()