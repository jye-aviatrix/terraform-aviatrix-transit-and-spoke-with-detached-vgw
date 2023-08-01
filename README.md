# Architecture

- This repo create two Aviatrix Transit in two different regions
- Each region have two Aviatrix spoke created
- Aviatrix Transit is peered
- Each region have VGW created, the VGW is not attached to any VPC
- Aviatrix Transit External connection to VGW workflow is used
- AS-Prepend on one region Transit towards VGW, instead of AS-Prepend on the gateway level.