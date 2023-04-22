# Deployment strategy

## Blue green deployment strategy

New deployment is up and running, no traffic is sent.
Tests are run and when complete, traffic to old is shutdown and re-reouted fully to new

## Canary deployment

x% of traffic is sent to old deployment, (100-x)% of traffic is sent to new deployment 

where x is a usually greater than 50

## Recreate

## Rolling update
