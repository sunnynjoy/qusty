The original requirement has been implemented and successfully tested twice on L1.

Please revert only the three extra changes you identified as outside the original scope:

1. Optional IncidentTitle and incident-type column handling inside PSIF.
2. Optional --label-column handling that is no longer used.
3. Extra S3 outputs on failed runs that are unrelated to generating the SIF training dataset.

Keep everything required for the working Portal Process → SageMaker → PSIF pipeline → sif_training_dataset.csv in S3.

Do not revert the ingest Lambda safety check.

Run the relevant tests after cleanup and confirm the output CSV schema and existing incident-type behaviour remain unchanged.

Do not add features, refactor unrelated code or introduce further improvements.

Do not deploy or run another SageMaker job without approval.

Report the results and stop. Do not commit or push until I approve.