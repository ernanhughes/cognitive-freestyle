CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE hypotheses (
    id SERIAL PRIMARY KEY,
    goal TEXT,
    text TEXT,
    confidence FLOAT,
    review TEXT,
    embedding VECTOR(1536),
    features JSONB,
    created_at TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE elo_ranking_log (
    id SERIAL PRIMARY KEY,
    run_id TEXT,
    hypothesis TEXT,
    score INTEGER,
    created_at TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE summaries (
    id SERIAL PRIMARY KEY,
    text TEXT,
    created_at TIMESTAMPTZ DEFAULT now()
);


CREATE TABLE ranking_trace (
    id SERIAL PRIMARY KEY,
    run_id TEXT,
    winner TEXT,
    loser TEXT,
    explanation TEXT,
    created_at TIMESTAMPTZ DEFAULT now()
);

