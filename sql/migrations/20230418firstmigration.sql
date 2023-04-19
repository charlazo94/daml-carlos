CREATE TABLE policies (
  policy_id SERIAL PRIMARY KEY,
  policy_holder TEXT NOT NULL,
  insured_item TEXT NOT NULL,
  coverage_amount NUMERIC(10,2) NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL
);

CREATE TABLE claims (
  claim_id SERIAL PRIMARY KEY,
  claimant TEXT NOT NULL,
  policy_id INTEGER NOT NULL REFERENCES policies (policy_id),
  claim_amount NUMERIC(10,2) NOT NULL,
  claim_date DATE NOT NULL
);
