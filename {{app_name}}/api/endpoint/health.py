from fastapi import APIRouter

router = APIRouter()


@router.get("/healthz", status_code=200)
async def healthz():
    return {"status": "ok"}
