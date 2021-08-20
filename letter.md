---
title: What is 80% good enough for real-time analyses during the COVID-19 pandemic
bibliography: [library.bib]
output: pdf_document
---

## Abstract

## Main text

"An 80% right paper before a policy decision is made is worth ten 95% right papers afterwards, provided the methodological limitations imposed by doing it fast are made clear"

This quote from Whitty et al. [@whitty] captures much of the academic discourse around real-time analyses conducted to inform COVID-19 health policy. Here we use examples from our policy adjacent COVID-19 work to explore the issues leading to analysis being "80% correct" and highlight the factors that led to these issues. We also discuss what prevents discovery and reporting of methodological limitations and at what threshold a real-time analysis is of a high enough standard to be used to inform health policy.

Collectively, we have published numerous studies related to the COVID-19 pandemic, have contributed studies to government advisory committees, presented results to the WHO and other bodies, and have worked on previous infectious disease outbreaks with similar issues such as the 2013-2016 Ebola outbreak in West Africa. Our work spans non-parametric statistical modelling of transmission, short-term forecasts, scenario modelling using mechanistic compartmental models, and a range of reactive analyses usually conducted with short-time horizons to inform policy-makers.

## Examples

### Global Rt estimation and short term forecasting

#### What

- Estimation of the time-varying effective reproduction number of COVID-19. Initially in China from February 2020, then expanding globally, to sub-national geographies, and multiple data sources with daily updates [@Abbott2020v1; @Abbott2020v2].
- The same estimation method was used to contribute to the SPI-M aggregated reproduction number estimates and to ensemble short term forecasts
- Work contributed to the SPI-M Rt estimate and SPI-M short term forecasts [@ukcovid19spimforecasts]

#### Reported limitations

We reported the lack of location-specific data on the delay between onset and case report, lack of location-specific data on the generation time of COVID-19, and difficulty in extrapolating current cases to produce estimates of the current reproduction number.

#### Unreported limitations

- Our initial approach was flawed as it treated delays from infection to report as reversible.
- Our handling of delays resulted in over-smoothed estimates that have been shown to lag real-world changes in transmission.
- This issue was widely known in some areas (cite HIV example) but otherwise little discussed.
- Methods to account for this issue existed but had received little attention and had not been designed to robustly deal with real-world data.
- Though updates occur each day inputs such as the delays from onset to report are not frequently updated. There are likely better data sources now available in each location.

#### Potential biases

#### Causes

- Lack of depth of knowledge about historical pandemics and the lessons learnt from them.
- Lack of researcher time to think deeply about the problem at hand
- As this is not a classic academic project that generates discrete studies for researchers to use to gain credit, it has been difficult to motivated contributors on the scale required.

#### Mitigation

- A collaboration between researchers producing real-time reproduction number estimates highlighted this issue [@gostic-rt]. We, along with other groups, then developed a range of methods to better handle the issue [@Abbott2020v2].
- Whilst many methods now exist they have in general been only partially evaluated and many of them are not designed for general, long term, usage.

### Alpha and Delta transmissibility advantage

#### What

- [@Davies2021], [@delta-work]
- Used a novel regression framework to model estimated reproduction numbers as a mixture of none variant of concern and variant of concern reproduction numbers. This allowed the multiplicative transmission advantage of variants of concern to be estimated after adjusting for static and time-varying covariates influencing transmission.

#### Reported limitations

- Did not include uncertainty in the estimated reproduction numbers used as the outcome.
- Did not include uncertainty in the proportion of cases that had the variant of concern.
- Did not model spatial auto-correlation explicitly with only random effects by location included. 
- Did not have access to a robust UK estimate of the generation time meaning that results had to be presented for a range of scenarios.

**Potential bias:**

- These issues were likely to have resulted in spuriously precise results.
- Excluding sequencing and Rt uncertainty likely led to bias beyond spurious precision as areas with low cases numbers were equally weighted with those that had high case numbers.

**Causes:**

- Lack of capacity, small teams, and a large amount of demand.
- Lack of technical resources meant that limited compute resources were available in the short term.

**Mitigation:**

- In Davies et al. [@alpha-science] our approach was combined with a range of other methods. However, there was no principled way to combine these estimates and so they were presented independently and only a single estimate was used for the main analyses from which policy implications were drawn.
- Whilst the issues known issues outlined were not resolved between the implementation of this approach for the Alpha and the Delta variant work is ongoing to improve the approach and to quantitatively explore the impact of these limitations. 

#### Delta transmission advantage from travelers

#### What

#### Known limitations

#### Unknown limitations

#### Causes

#### Mitigation

### LSHTM SPI-M scenario modeling

#### What

- Rt based method, data-led, with little model structure.
- Compartmental model approach with significant internal model complexity
- Submitted to SPI-M by independent teams with the Rt based method no longer being used from January 2021

#### Known limitations

#### Unknown limitations

#### Causes

- Independent data, computational, and validation pipelines within LSHTM with little to no overlap.

#### Mitigation

- Scenarios were modelled by multiple independent teams and then collaboratively discussed potentially reducing the impact of issues. However, it is likely that the issues we experienced were also problems for other groups which may have reduced the benefit of this ensemble approach.

### Conclusions

- Lack of breadth of knowledge in small research groups and difficulty in collaborating across groups on rapidly developing problems. This lack of knowledge includes both domain area expertise, statistical knowledge, and technical knowledge such as knowledge of software design, cloud computing, and task scheduling.
- As noted elsewhere this issue is exacerbated by the persistent myth of the lone researcher and the encouragement of this ideal by funding bodies [@KucharskiPlos]. ECRs are actively encouraged to pursue their own research interests with little reward for working collaboratively as part of a wider effort, we think that this likely negatively impacted the quality of our work.
- A persistent issue in academia more widely is the need for all work to be "novel". In the context of real-time analyses, this means that little follow-up work is done to evaluate the quality of real-time analyses.
- Many of the currently available, and commonly used, software tools require a high level of user knowledge to use appropriately. For work with short timelines, it may be difficult to produce results that are of sufficient quality without more tools customised to common tasks and a greater emphasis on learning how to use the currently available tools in detail.

## References

- @whitty: ‘An 80% right paper before a policy decision is made is worth ten 95% right papers afterwards, provided the methodological limitations imposed by doing it fast are made clear’. What makes an academic paper useful for health policy? https://bmcmedicine.biomedcentral.com/articles/10.1186/s12916-015-0544-8

- @royalsocietyeditorial: Brooks-Pollock et al. editorial for a theme exploring modelling shaped the early COVID-19 pandemic response in the UK. [https://doi.org/10.1098/rstb.2021.0001](https://doi.org/10.1098/rstb.2021.0001)

- @kucharski: The COVID-19 response illustrates that traditional academic reward structures and metrics do not reflect crucial contributions to modern science. [https://doi.org/10.1371/journal.pbio.3000913](https://doi.org/10.1371/journal.pbio.3000913)
