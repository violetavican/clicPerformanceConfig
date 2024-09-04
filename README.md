# Converting algorithms (DDPlanarDigiProcessor) from iLCSoft to Gaudi
This is the result of my **summer internship at CERN in 2022**, where I joined the **EP-SFT group** and my task was to **convert an iLCSoft algorithm used for the CLIC reconstruction using the Key4hep software stack** and guidelines: using and benefiting from the Gaudi framework, modernizing the code where possible and following modern practices for clean code and support for multi-threading.

[Link to the final CERN publication can be found here](https://cds.cern.ch/record/2836423)


## Some context
Future collider experiments rely on well maintained software frameworks and algorithms to perform physics studies and detector optimization. **ILCSoft developed software packages for the International Linear Collider (ILC)** community which are used by ILC and CLIC, including a software framework and a set of algorithms that have been successfully used by these communities.

The Key4hep project is building a consistent well-maintained common software stack used and developed by FCC, ILC, CLIC, CEPC. The software stack includes common packages for the Event Data Model (EDM), the Gaudi based software framework, detector simulation, event generation and algorithms. Key4hep integrates ILCSoft battle-tested algorithms to be used as part of the common software stack. To achieve this an EDM converter and algorithm wrapper to run with the common framework and interfaces (Gaudi) is provided. As this solution introduces overheads for the conversions, and several components are not natively Integrated with the common framework, Key4hep must undergo a conversion and modernization of the iLCSoft algorithms.

Converting iLCSoft algorithms to Gaudi includes:
- Natively using the common EDM (EDM4hep)
- Using the Gaudi interfaces to run algorithms as part of the framework
- Leveraging the different tools and services offered by Gaudi to better integrate with it
- Adapting where necessary the algorithms to be thread-safe, using the provided Gaudi
multi-threading capabilities alongside with Gaudi Functional interfaces
- Validating the output of the converted version against the original one


## Results
The migration was successful, and some general guidelines were noted to enable future automation.
This project comprises the conversion of only one of the around 48 algorithms that iLCSoft has, but hopefully it leads the way for the others to follow, with the aim to build a common software stack to be used by the HEP community and its different colliders all around the globe.
