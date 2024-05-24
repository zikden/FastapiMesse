from fastapi import FastAPI


def create_app():
    return FastAPI(
        title="messenger",
        debug=True,
        docs_url="/api/docs",
    )


create_app()
