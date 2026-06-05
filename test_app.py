from app import app

def test_home():
    client = app.test_client()
    response = client.get("/")

    # DIPAKSA SALAH
    assert response.status_code == 500