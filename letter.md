---
title: What is 80% good enoughttps://cmmid.slack.com/archives/D0100EVJ3JB/p1629795789001500
csl: https://raw.githubusercontent.com/citation-style-language/styles/master/apa-numeric-superscript-brackets.csl
output: pdf_document
---

## Abstract

## Main text

"An 80% right paper before a policy decision is made is worth ten 95% right papers afterwards, provided the methodological limitations imposed by doing it fast are made clear."

This quote from Whitty et al. [@whitty_what_2015] captures much of the academic discourse around real-time analyses conducted to inform COVID-19 health policy. Here we use examples from our policy adjacent COVID-19 work to explore the issues leading to analysis being "80% correct" and highlight the factors that led to these issues. We also discuss what prevents discovery and reporting of methodological limitations and at what threshold a real-time analysis is of a high enough standard to be used to inform health policy.

Collectively, we have published numerous studies related to the COVID-19 pandemic, have contributed studies to government advisory committees, presented results to the WHO and other bodies, and have worked on previous infectious disease outbreaks with similar issues such as the 2013-2016 Ebola outbreak in West Africa. Our work spans non-parametric statistical modelling of transmission, short-term forecasts, scenario modelling using mechanistic compartmental models, and a range of reactive analyses usually conducted with short-time horizons to inform policy-makers.

The first example of our work we discuss is a large scale project to estimate the effective reproduction number of COVID-19 over tim in real-time [@Abbott2020v1; @Abbott2020v2]. Starting in February 2020 with a focus on China and growing to include national estimates globally as well as estimates at smaller scales in multiple countries with a range of data sources. This work has fed into the Scientific Pandemic Influenza Group on Modelling (SPI-M) aggregated reproduction number estimate and short-term forecasts [@sherratt_exploring_2021; @funk_short-term_2020] and the site where estimates are presented has had over 400,000 unique users. As being based on surveillance data, done at large scale, and repeated on routinely changing data this work has many obvious limitations. In our published work we reported a range of these including the lack of location-specific data on the time from infection to case report, lack of understanding on the interaction between the generation time and the reproduction number, and the difficulty in extrapolating current reported cases to infer the dynamics of current infections. However, our initial work also included an unknown, and hence unreported, limitation in that it assumed that the delay from infection to report could be treated as reversible when this cannot in fact be done in most circumstances without introducing bias [@Abbott2020v1]. This bias has since been investigated extensively and has been shown to result in over-smoothed estimates that lag real-world changes in transmission [@gostic]. Though this issue has since been mitigated via new methodological developments [@Abbott2020v2] it is likely that it resulted in flaw inferences being drawn from the estimates. An additional unacknowledged limitation of this work is the difficulty in maintaining and running a large scale, compute intensive, project over a prolonged period of time for which the best data sources also differ by location.

A critical issue that influenced the initial flawed implementation was a lack of knowledge of developments in certain areas of the literature (in this case the HIV literature) [@gostic] and the failure of those working in this area to propagate robust tooling to allow others to mitigate the issue. This was likely exacerbated by the typical lack of focus on developing methodology appropriate to real-time disease tracking prior to the COVID-19 pandemic and the difficulty in developing tools whilst also trying to deploy them. A wider issue with this project was its continuous nature and lack of discrete  outcomes which made incentivising substantial contributions difficult, especially once the initial work had been published. In theory this could have been resolved by building collaborations with those developing new methodology as contributors to the project but in practice this was difficult to negotiate despite significant time and resources being spent on this aim. Unfortunately whilst a range of real-time reproduction number estimations now exist in general these have been only partially evaluated and in they are rarely designed with reusability robustness in mind. 

### Examples

#### Alpha and Delta transmissibility advantage

##### What

- [@Davies2021], [@AbbottDelta]
- Used a novel regression framework to model estimated reproduction numbers as a mixture of none variant of concern and variant of concern reproduction numbers. This allowed the multiplicative transmission advantage of variants of concern to be estimated after adjusting for static and time-varying covariates influencing transmission.

##### Reported limitations

- Did not include uncertainty in the estimated reproduction numbers used as the outcome.
- Did not include uncertainty in the proportion of cases that had the variant of concern.
- Did not model spatial auto-correlation explicitly with only random effects by location included.
- Did not have access to a robust UK estimate of the generation time meaning that results had to be presented for a range of scenarios.

##### Potential bias

- These issues were likely to have resulted in spuriously precise results.
- Excluding sequencing and Rt uncertainty likely led to bias beyond spurious precision as areas with low cases numbers were equally weighted with those that had high case numbers.

##### Causes

- Lack of capacity, small teams, and a large amount of demand.
- Lack of technical resources meant that limited compute resources were available in the short term.

##### Mitigation

- In Davies et al. [@Davies2021] our approach was combined with a range of other methods. However, there was no principled way to combine these estimates and so they were presented independently and only a single estimate was used for the main analyses from which policy implications were drawn.
- Whilst the issues known issues outlined were not resolved between the implementation of this approach for the Alpha and the Delta variant work is ongoing to improve the approach and to quantitatively explore the impact of these limitations.

#### Delta transmission advantage from travelers

#### LSHTM SPI-M scenario modeling

##### What

- Rt based method, data-led, with little model structure.
- Compartmental model approach with significant internal model complexity
- Submitted to SPI-M by independent teams with the Rt based method no longer being used from January 2021

##### Known limitations

##### Unknown limitations

##### Causes

- Independent data, computational, and validation pipelines within LSHTM with little to no overlap.

##### Mitigation

- Scenarios were modeled by multiple independent teams and then collaboratively discussed potentially reducing the impact of issues. However, it is likely that the issues we experienced were also problems for other groups which may have reduced the benefit of this ensemble approach.

### Conclusions

- Lack of breadth of knowledge in small research groups and difficulty in collaborating across groups on rapidly developing problems. This lack of knowledge includes both domain area expertise, statistical knowledge, and technical knowledge such as knowledge of software design, cloud computing, and task scheduling.
- As noted elsewhere this issue is exacerbated by the persistent myth of the lone researcher and the encouragement of this ideal by funding bodies [@kucharski_covid-19_2020]. ECRs are actively encouraged to pursue their own research interests with little reward for working collaboratively as part of a wider effort, we think that this likely negatively impacted the quality of our work.
- A persistent issue in academia more widely is the need for all work to be "novel". In the context of real-time analyses, this means that little follow-up work is done to evaluate the quality of real-time analyses.
- Many of the currently available, and commonly used, software tools require a high level of user knowledge to use appropriately. For work with short timelines, it may be difficult to produce results that are of sufficient quality without more tools customised to common tasks and a greater emphasis on learning how to use the currently available tools in detail.

## References

<div id = 'refs'></div>