word_seg
========

# Original posting notes

Word segmentation data from Frank et al. (2010), Cognition

These are the original tabular data from the project. A few notes:
- I haven't posted the analyses, as these were in matlab and were somewhat baroque - instead `analysis.R` is a very simple R reproduction of the behavioral data analysis
- The subject ids are not unique across experiments, so be careful in merging datasets
- Please email mcfrank@stanford.edu for more details

## Notes from 11/18/20

Thanks to Josh Hartshorne and Wesley Ricketts who identified discrepancies in these data and the published results.

Most of the discrepancy is in the careless way I anonymized the data, which resulted in several subject IDs getting improperly combined and analyzed as being a single participant with twice as much data. lesson: don't use multiple pieces of paper for subject ID tracking.

The new data here do not completely reproduce what was in the paper (though they are closer) - instead, they more accurately reflect what actually happened in the experiment.

**IMPORTANT NOTE: all of this is extremely minor, and basically doesn't make any difference to anything in the paper!**

### Experiment 1

- the posted data were incorrect because of bad subject ID uniquification.
- exclusions were incorrect (used an order-dependent iterative method) - I can't reproduce the exact exclusion of 3 participants, but doing it correctly excludes 4 rather than 3.

### Experiment 2

- one subid was used twice, leading to two participants getting coded (and analyzed) with the same ID

### Experiment 3

- six subids were used twice, leading to 69 total subjects
- exclusions conducted correctly lead to only one participant being excluded. 
