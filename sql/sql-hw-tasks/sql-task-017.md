# B''H


## SQL Task 17

---

- Use the following table:
    - `data-science-course-226116.sql_lessons.google_ads_etl_step_2` 

- This sql task is an example of a ***Top-N*** query.

- Per account, get the 4 day moving cost avg

- Then for each account rank that moving avg 

- Return the records that are part of rank 1 - i.e. this is a ***Top-1*** query.


---

- Result should have 653 records and look like this:


|account|day|cost|moving_avg_4_days|account_moving_avg_4_days_dense_rank|
|---|---|---|---|---|
|Advanced Eyecare Center|2018-08-16|6.96|6.0175|1|
|Advanced Eyecare Center|2018-08-16|3.42|6.0175|1|
|Advanced Eyecare Center|2018-08-16|6.71|6.0175|1|
|Advanced Eyecare Center|2018-08-16|4.38|6.0175|1|
|Advanced Eyecare Center|2018-08-16|5.66|6.0175|1|
|Advanced Eyecare Center|2018-08-16|4.37|6.0175|1|
|Advanced Eyecare Center|2018-08-16|4.38|6.0175|1|
|Advanced Eyecare Center|2018-08-16|12.26|6.0175|1|
|Advanced Family Eye Care|2018-07-25|7.55|7.60375|1|
|Advanced Family Eye Care|2018-07-25|19.17|7.60375|1|
|Advanced Family Eye Care|2018-07-25|4.68|7.60375|1|
|Ajax Family Eyecare|2018-06-11|9.42|7.976666667|1|
|Ajax Family Eyecare|2018-06-11|7.08|7.976666667|1|
|Aloma Eye Associates|2018-03-29|11.18|3.123333333|1|
|Aloma Eye Associates|2018-03-29|1.76|3.123333333|1|
|Aloma Eye Associates|2018-03-29|0|3.123333333|1|
|Aloma Eye Associates|2018-03-29|0.8|3.123333333|1|
|Aloma Eye Associates|2018-03-29|6.22|3.123333333|1|
|Aloma Eye Associates|2018-03-29|0|3.123333333|1|
|Aloma Eye Associates|2018-03-29|4.71|3.123333333|1|
|Aloma Eye Associates|2018-03-29|0|3.123333333|1|
|Aloma Eye Associates|2018-03-29|4.96|3.123333333|1|
|Aloma Eye Associates|2018-03-29|0|3.123333333|1|
|Altig Optical|2018-06-04|10.52|4.23|1|
|Altig Optical|2018-06-04|9.75|4.23|1|
|Altig Optical|2018-06-04|0.94|4.23|1|
|Altig Optical|2018-06-04|0.2|4.23|1|
|Altig Optical|2018-06-04|9.48|4.23|1|
|Altig Optical|2018-06-04|0|4.23|1|
|Ancaster Family Eye Care|2018-05-01|5.83|6.922941176|1|
|Ancaster Family Eye Care|2018-05-01|0|6.922941176|1|
|Ancaster Family Eye Care|2018-05-01|7.38|6.922941176|1|
|Ancaster Family Eye Care|2018-05-01|5.62|6.922941176|1|
|Anderson Eye Care|2017-07-26|7.9|7.9|1|
|Antoine Eye Care|2018-08-28|3.76|6.407777778|1|
|Bear Creek Eye Care Optometry|2018-10-01|6.93|6.083333333|1|
|Bear Creek Eye Care Optometry|2018-10-01|6.36|6.083333333|1|
|Bear Creek Eye Care Optometry|2018-10-01|11.47|6.083333333|1|
|Bear Creek Eye Care Optometry|2018-10-01|0|6.083333333|1|
|Berryessa Optometry|2017-07-05|13.12|11.733333333|1|
|Berryessa Optometry|2017-07-05|4.72|11.733333333|1|
|Bling Eyewear|2017-12-21|5.96|3.189583333|1|
|Bling Eyewear|2017-12-21|2.66|3.189583333|1|
|Bling Eyewear|2017-12-21|3.3|3.189583333|1|
|Bling Eyewear|2017-12-21|0|3.189583333|1|
|Bling Eyewear|2017-12-21|2.69|3.189583333|1|
|Blink Eyewear|2018-10-16|0|1.917466667|1|
|Blink Eyewear|2018-10-16|4.35|1.917466667|1|
|Blink Eyewear|2018-10-16|0|1.917466667|1|
|Blink Eyewear|2018-10-16|0|1.917466667|1|
|Blink Eyewear|2018-10-16|2|1.917466667|1|
|Blink Eyewear|2018-10-16|0|1.917466667|1|
|Blink Eyewear|2018-10-16|1.51|1.917466667|1|
|Blink Eyewear|2018-10-16|3.14|1.917466667|1|
|Blink Eyewear|2018-10-16|0.13|1.917466667|1|
|Blink Eyewear|2018-10-16|1.37|1.917466667|1|
|Blink Eyewear|2018-10-16|0|1.917466667|1|
|Blink Eyewear|2018-10-16|0|1.917466667|1|
|Blink Eyewear|2018-10-16|12.56|1.917466667|1|
|Blink Eyewear|2018-10-16|0|1.917466667|1|
|Blink Eyewear|2018-10-16|6.98|1.917466667|1|
|Blink Eyewear|2018-10-16|0|1.917466667|1|
|Bridger Eyecare|2017-09-05|10.06|9.16|1|
|Bridger Eyecare|2017-09-05|1.76|9.16|1|
|Bridger Eyecare|2017-09-05|15.66|9.16|1|
|Bridlewood Eye Care|2018-11-15|7.9|4.792|1|
|Bridlewood Eye Care|2018-11-15|3.36|4.792|1|
|Buena Vista Optometry|2018-11-19|18.38|11.375714286|1|
|Calgary Trail Vision Centre|2018-02-02|0.52|3.916|1|
|Calgary Trail Vision Centre|2018-02-02|8.42|3.916|1|
|Chris A Smiley OD & Associates LLC|2018-08-13|8.44|3.850714286|1|
|Chris A Smiley OD & Associates LLC|2018-08-13|0|3.850714286|1|
|Chris A Smiley OD & Associates LLC|2018-08-13|0|3.850714286|1|
|Chris A Smiley OD & Associates LLC|2018-08-13|0|3.850714286|1|
|Chris A Smiley OD & Associates LLC|2018-08-13|0|3.850714286|1|
|Chris A Smiley OD & Associates LLC|2018-08-13|0|3.850714286|1|
|Chris A Smiley OD & Associates LLC|2018-08-13|0|3.850714286|1|
|Chris A Smiley OD & Associates LLC|2018-08-13|14|3.850714286|1|
|Chris A Smiley OD & Associates LLC|2018-08-13|2.51|3.850714286|1|
|Clearvue Vision Center|2018-04-23|7.72|4.806|1|
|Clearvue Vision Center|2018-04-23|12.22|4.806|1|
|Clearvue Vision Center|2018-04-23|0|4.806|1|
|Clearvue Vision Center|2018-04-23|8.33|4.806|1|
|Clearvue Vision Center|2018-04-23|8.94|4.806|1|
|Clearvue Vision Center|2018-04-23|4.32|4.806|1|
|Clearvue Vision Center|2018-04-23|0|4.806|1|
|Clearvue Vision Center|2018-04-23|0|4.806|1|
|Complete Family Eye Care|2018-11-01|8.01|7.118823529|1|
|Complete Family Vision Care|2018-04-17|7.3|6.6875|1|
|Complete Family Vision Care|2018-04-17|6.65|6.6875|1|
|Complete Family Vision Care|2018-04-17|6.07|6.6875|1|
|Complete Family Vision Care|2018-04-17|6.73|6.6875|1|
|Corktown Eyecare|2018-07-21|10.56|9.602727273|1|
|Corktown Eyecare|2018-07-21|5.42|9.602727273|1|
|Corktown Eyecare|2018-07-21|10.16|9.602727273|1|
|Cove Eye Care|2017-09-14|13.18|5.5032|1|
|Cove Eye Care|2017-09-14|5.8|5.5032|1|
|Cove Eye Care|2017-09-14|3.74|5.5032|1|
|Cove Eye Care|2017-09-14|0.23|5.5032|1|
|Cove Eye Care|2017-09-14|8|5.5032|1|
|Cove Eye Care|2017-09-14|1.18|5.5032|1|
|Cowichan Eyecare|2018-09-26|0|2.558148148|1|
|Cowichan Eyecare|2018-09-26|0|2.558148148|1|
|Cowichan Eyecare|2018-09-26|0|2.558148148|1|
|Cowichan Eyecare|2018-09-26|0|2.558148148|1|
|Cowichan Eyecare|2018-09-26|0|2.558148148|1|
|Cowichan Eyecare|2018-09-26|2.75|2.558148148|1|
|Cowichan Eyecare|2018-09-26|7.85|2.558148148|1|
|Cowichan Eyecare|2018-09-26|0|2.558148148|1|
|Cowichan Eyecare|2018-09-26|3.61|2.558148148|1|
|Cowichan Eyecare|2018-09-26|0|2.558148148|1|
|Custom Eye Care|2018-06-22|8|9.808571429|1|
|CustomEyes|2018-07-16|11.51|7.05|1|
|CustomEyes|2018-07-16|1.74|7.05|1|
|CustomEyes|2018-07-16|6.95|7.05|1|
|CustomEyes|2018-07-16|8|7.05|1|
|Davis EyeCare Associates|2018-10-23|4.2|5.39625|1|
|Davis EyeCare Associates|2018-10-23|5.41|5.39625|1|
|Diamond Vision|2017-11-11|75.93|14.164|1|
|Diamond Vision|2017-11-11|0|14.164|1|
|Dr. Brian Berliner and Associates|2018-12-12|7.26|4.841578947|1|
|Dr. Brian Berliner and Associates|2018-12-12|6.2|4.841578947|1|
|Dr. Brian Berliner and Associates|2018-12-12|6.51|4.841578947|1|
|Dr. Brian Berliner and Associates|2018-12-12|2.74|4.841578947|1|
|Dr. Brian Berliner and Associates|2018-12-12|9.99|4.841578947|1|
|Dr. Prate's Family Eye Care|2018-06-05|8.94|4.5475|1|
|Dr. Prate's Family Eye Care|2018-06-05|0.39|4.5475|1|
|Dr. Prate's Family Eye Care|2018-06-05|4.48|4.5475|1|
|Dr. Zargar Eyecare|2018-09-10|19.56|10.24|1|
|E Street Eyes|2018-11-06|9.87|9.215555556|1|
|E Street Eyes|2018-11-06|4.54|9.215555556|1|
|E Street Eyes|2018-11-06|19.76|9.215555556|1|
|Eagle Mountain Family Eye Care|2018-05-01|0.94|4.646666667|1|
|Eagle Mountain Family Eye Care|2018-05-01|0.4|4.646666667|1|
|Eastlake Vision Center Optometry|2018-05-29|5.4|6.432222222|1|
|Eastlake Vision Center Optometry|2018-05-29|5.23|6.432222222|1|
|Eastlake Vision Center Optometry|2018-05-29|5.98|6.432222222|1|
|Eye Associates of Richboro|2018-07-13|4.64|6.695555556|1|
|Eye Associates of Richboro|2018-07-13|10.71|6.695555556|1|
|Eye Associates of Richboro|2018-07-13|4.23|6.695555556|1|
|Eye Doctors - Elgart Gordon & Associates|2018-05-04|11.56|6.931111111|1|
|Eye Fashion Optical|2018-05-04|7.99|6.853|1|
|Eye Fashion Optical|2018-05-04|7.14|6.853|1|
|Eye Fashion Optical|2018-05-04|14.97|6.853|1|
|Eye Looks|2018-09-10|3.89|8.018571429|1|
|Eye Looks|2018-09-10|0|8.018571429|1|
|Eye Looks|2018-09-10|7.95|8.018571429|1|
|Eye Looks|2018-09-10|12.96|8.018571429|1|
|Eye Looks|2018-09-10|6.65|8.018571429|1|
|Eye Luv Lucy Optometry|2017-07-11|0|8.3645|1|
|Eye Luv Lucy Optometry|2017-07-11|1.91|8.3645|1|
|Eye Luv Lucy Optometry|2017-07-11|67.32|8.3645|1|
|Eye Pieces Dallas|2018-11-29|8.54|6.242666667|1|
|Eye Pieces Dallas|2018-11-29|0|6.242666667|1|
|Eye Pieces Dallas|2018-11-29|7.61|6.242666667|1|
|Eye Pieces Dallas|2018-11-29|4.1|6.242666667|1|
|Eye Pieces Plano|2018-11-01|8.07|4.431333333|1|
|Eye Pieces Plano|2018-11-01|5.78|4.431333333|1|
|Eye Pieces Plano|2018-11-01|5.65|4.431333333|1|
|Eye Pieces Plano|2018-11-01|4.27|4.431333333|1|
|Eye Trends|2018-09-12|8.23|8.5|1|
|Eyeland Vision|2018-03-06|9.71|5.16125|1|
|Eyeland Vision|2018-03-06|6.29|5.16125|1|
|Eyeland Vision|2018-03-06|7.69|5.16125|1|
|Eyeland Vision|2018-03-06|7.3|5.16125|1|
|Eyeland Vision|2018-03-06|5.75|5.16125|1|
|Eyeland Vision|2018-03-06|0|5.16125|1|
|Family Eye Center|2017-10-17|4.87|3.225|1|
|Family Eye Center|2017-10-17|1.58|3.225|1|
|Family Vision Solutions|2018-08-21|0|4.796666667|1|
|Family Vision Solutions|2018-08-21|6.17|4.796666667|1|
|Five Points Eye Care|2018-04-27|9|8.47|1|
|Five Points Eye Care|2018-04-27|9.24|8.47|1|
|Five Points Eye Care|2018-04-27|7.68|8.47|1|
|Fox Chase Family Eye Care|2018-08-21|8.46|5.864166667|1|
|Fox Chase Family Eye Care|2018-08-21|6.13|5.864166667|1|
|Fox Chase Family Eye Care|2018-08-21|0|5.864166667|1|
|Fusion Eye Care|2018-11-29|29.06|6.3832|1|
|Fusion Eye Care|2018-11-29|14.4|6.3832|1|
|Fusion Eye Care|2018-11-29|0|6.3832|1|
|Fusion Eye Care|2018-11-29|0|6.3832|1|
|Hartsdale Family Eyecare|2017-10-03|5.38|5.336666667|1|
|Hartsdale Family Eyecare|2017-10-03|4.36|5.336666667|1|
|Hartsdale Family Eyecare|2017-10-03|6.27|5.336666667|1|
|Hopewell-Lambertville Eye Associates|2018-06-16|8.64|4.610625|1|
|Hopewell-Lambertville Eye Associates|2018-06-16|1|4.610625|1|
|Horizon Eye Care & Optical|2018-08-06|10.2|8.667142857|1|
|James Eye Associates|2018-03-14|0|5.320909091|1|
|James Eye Associates|2018-03-14|3.7|5.320909091|1|
|James Eye Associates|2018-03-14|7.04|5.320909091|1|
|James Eye Associates|2018-03-14|8.36|5.320909091|1|
|James Eye Associates|2018-03-14|4.76|5.320909091|1|
|Kosnoski Eye Care|2018-11-12|9.86|9.431666667|1|
|Kosnoski Eye Care|2018-11-12|8.85|9.431666667|1|
|Lakeline Vision Source|2018-09-17|6.88|4.75|1|
|Lakeline Vision Source|2018-09-17|20.02|4.75|1|
|Lifetime Eyecare Associates|2018-05-03|0|6.189090909|1|
|Lifetime Eyecare Associates|2018-05-03|1.54|6.189090909|1|
|Lifetime Eyecare Associates|2018-05-03|11.92|6.189090909|1|
|Lifetime Eyecare Associates|2018-05-03|6|6.189090909|1|
|Lougheed Optical|2018-10-09|11.47|9.86|1|
|Lougheed Optical|2018-10-09|11.83|9.86|1|
|Lowy & Sewell Eye Care|2018-09-13|10.65|10.842|1|
|Mall of the Americas EyeCare|2017-07-08|12.76|11.274545455|1|
|N2 Eyes|2018-04-11|4.34|5.909230769|1|
|N2 Eyes|2018-04-11|6.92|5.909230769|1|
|N2 Eyes|2018-04-11|0|5.909230769|1|
|N2 Eyes|2018-04-11|0.3|5.909230769|1|
|N2 Eyes|2018-04-11|1.27|5.909230769|1|
|N2 Eyes|2018-04-11|7.59|5.909230769|1|
|N2 Eyes|2018-04-11|8.79|5.909230769|1|
|N2 Eyes|2018-04-11|13.78|5.909230769|1|
|N2 Eyes|2018-04-11|6.96|5.909230769|1|
|Oak Park Optometrist|2018-09-14|0|6.911333333|1|
|Oak Park Optometrist|2018-09-14|0|6.911333333|1|
|Oak Park Optometrist|2018-09-14|11.78|6.911333333|1|
|Oak Park Optometrist|2018-09-14|6.87|6.911333333|1|
|Oakbrook Optical Eyecare|2018-09-20|8.62|7.118461538|1|
|Oakbrook Optical Eyecare|2018-09-20|8.52|7.118461538|1|
|Oakbrook Optical Eyecare|2018-09-20|7.56|7.118461538|1|
|One Vision|2018-11-11|6.98|7.891818182|1|
|Optical Zone|2018-08-04|7.27|7.437142857|1|
|Optix Family Eyecare Center|2018-05-05|9.33|5.960588235|1|
|Optix Family Eyecare Center|2018-05-05|3.04|5.960588235|1|
|Optix Family Eyecare Center|2018-05-05|7.43|5.960588235|1|
|Optometry at Redwood Shores|2018-05-29|0|10.53|1|
|Optometry at Redwood Shores|2018-05-29|10.23|10.53|1|
|Optometry at Redwood Shores|2018-05-29|10.77|10.53|1|
|Optometry at Redwood Shores|2018-05-29|8.58|10.53|1|
|Optometry at Redwood Shores|2018-05-29|3.44|10.53|1|
|Overland Optical Family Eye Care|2018-07-02|0|4.224615385|1|
|Overland Optical Family Eye Care|2018-07-02|0|4.224615385|1|
|Overland Optical Family Eye Care|2018-07-02|1.82|4.224615385|1|
|Overland Optical Family Eye Care|2018-07-02|0|4.224615385|1|
|Overland Optical Family Eye Care|2018-07-02|6.01|4.224615385|1|
|Overland Optical Family Eye Care|2018-07-02|0|4.224615385|1|
|Overland Optical Family Eye Care|2018-07-02|10.81|4.224615385|1|
|Overland Optical Family Eye Care|2018-07-02|0.28|4.224615385|1|
|Overland Optical Family Eye Care|2018-07-02|8.3|4.224615385|1|
|Overland Optical Family Eye Care|2018-07-02|9.66|4.224615385|1|
|Overland Optical Family Eye Care|2018-07-02|1.25|4.224615385|1|
|Overland Optical Family Eye Care|2018-07-02|0.22|4.224615385|1|
|Overland Optical Family Eye Care|2018-07-02|3.65|4.224615385|1|
|Pacific Eye Care|2018-03-16|0|4.924|1|
|Pacific Eye Care|2018-03-16|4.61|4.924|1|
|Pacific Eye Care|2018-03-16|0|4.924|1|
|Pacific Eye Care|2018-03-16|6.88|4.924|1|
|Pacific Eye Care|2018-03-16|15.52|4.924|1|
|Park Avenue LASEK|2018-11-26|0|11.78975|1|
|Park Avenue LASEK|2018-11-26|0|11.78975|1|
|Park Avenue LASEK|2018-11-26|0|11.78975|1|
|Park Avenue LASEK|2018-11-26|27.94|11.78975|1|
|Park Avenue LASEK|2018-11-26|17.87|11.78975|1|
|Park Avenue LASEK|2018-11-26|0|11.78975|1|
|Park Avenue LASEK|2018-11-26|0|11.78975|1|
|Park Avenue LASEK|2018-11-26|19.78|11.78975|1|
|Park Avenue LASEK|2018-11-26|18.29|11.78975|1|
|Park Avenue LASEK|2018-11-26|0|11.78975|1|
|Park Avenue LASEK|2018-11-26|8.86|11.78975|1|
|Park Avenue LASEK|2018-11-26|19.9|11.78975|1|
|Park Avenue LASEK|2018-11-26|19.37|11.78975|1|
|Park Avenue LASEK|2018-11-26|0|11.78975|1|
|Park Avenue LASEK|2018-11-26|39.38|11.78975|1|
|Park Avenue LASEK|2018-11-26|0|11.78975|1|
|Park Avenue LASEK|2018-11-26|19.52|11.78975|1|
|Peepers Optical|2017-06-07|0|19.863333333|1|
|Peepers Optical|2017-06-07|26.14|19.863333333|1|
|Pikes Peak Eye Care|2017-12-15|0|2.938965517|1|
|Pikes Peak Eye Care|2017-12-15|2.92|2.938965517|1|
|Pikes Peak Eye Care|2017-12-15|3.33|2.938965517|1|
|Pikes Peak Eye Care|2017-12-15|3.35|2.938965517|1|
|Pikes Peak Eye Care|2017-12-15|2.22|2.938965517|1|
|Pikes Peak Eye Care|2017-12-15|4.94|2.938965517|1|
|Pomerado Scripps Eye Care|2018-04-24|5.75|6.74|1|
|Pomerado Scripps Eye Care|2018-04-24|8.66|6.74|1|
|Porter Eye Center|2017-12-12|0|4.497777778|1|
|Porter Eye Center|2017-12-12|5.66|4.497777778|1|
|Porter Eye Center|2017-12-12|0|4.497777778|1|
|Porter Eye Center|2017-12-12|19.68|4.497777778|1|
|Porter Eye Center|2017-12-12|0|4.497777778|1|
|Porter Eye Center|2017-12-12|0|4.497777778|1|
|Porter Eye Center|2017-12-12|0|4.497777778|1|
|Precision Family Eyecare|2018-11-03|2.36|9.468333333|1|
|Precision Family Eyecare|2018-11-03|10.63|9.468333333|1|
|"Rosen Optometry| Inc."|2018-04-24|7.6|5.795|1|
|"Rosen Optometry| Inc."|2018-04-24|3.84|5.795|1|
|Schoenbart Vision Care|2017-11-08|5.82|4.704848485|1|
|Schoenbart Vision Care|2017-11-08|3.69|4.704848485|1|
|Schoenbart Vision Care|2017-11-08|2.69|4.704848485|1|
|Schoenbart Vision Care|2017-11-08|2.96|4.704848485|1|
|Schoenbart Vision Care|2017-11-08|3.78|4.704848485|1|
|Schoenbart Vision Care|2017-11-08|5.56|4.704848485|1|
|Schoenbart Vision Care|2017-11-08|2.58|4.704848485|1|
|Sealy Eye Center|2018-08-27|8.82|8.82|1|
|See Eye Clinic|2018-04-21|0.47|5.11375|1|
|See Eye Clinic|2018-04-21|9.6|5.11375|1|
|See Eye Clinic|2018-04-21|0|5.11375|1|
|See Eye Clinic|2018-04-21|0|5.11375|1|
|See Eye Clinic|2018-04-21|4.17|5.11375|1|
|South Coast Optometry|2018-08-06|4.56|8.045|1|
|South Coast Optometry|2018-08-06|8.92|8.045|1|
|Spring Klein Vision Center|2018-04-26|10.02|3.7275|1|
|Spring Klein Vision Center|2018-04-26|0|3.7275|1|
|Spring Klein Vision Center|2018-04-26|4.59|3.7275|1|
|Spring Klein Vision Center|2018-04-26|0.4|3.7275|1|
|TSO - 1463|2018-03-26|7.84|4.6725|1|
|TSO - 1463|2018-03-26|7.77|4.6725|1|
|TSO - Aldine Westfield|2018-04-27|12.83|12.1|1|
|TSO - Allen|2018-03-06|8.53|5.274615385|1|
|TSO - Allen|2018-03-06|7.39|5.274615385|1|
|TSO - Allen|2018-03-06|0|5.274615385|1|
|TSO - Allen|2018-03-06|5.49|5.274615385|1|
|TSO - Allen|2018-03-06|6.37|5.274615385|1|
|TSO - Allen|2018-03-06|0|5.274615385|1|
|TSO - Allen|2018-03-06|9.65|5.274615385|1|
|TSO - Atascocita|2018-06-06|7.7|5.926|1|
|TSO - Atascocita|2018-06-06|7.69|5.926|1|
|TSO - Bandera|2018-10-19|5.55|3.95|1|
|TSO - Baybrook|2018-04-10|7.91|8.96|1|
|TSO - Baybrook|2018-04-10|4.75|8.96|1|
|TSO - Baytown|2018-05-23|2.78|2.642307692|1|
|TSO - Baytown|2018-05-23|2.23|2.642307692|1|
|TSO - Briargrove|2018-08-14|14.28|12.2825|1|
|TSO - Bryan|2017-11-13|3.44|3.290909091|1|
|TSO - Bryan|2017-11-13|7.99|3.290909091|1|
|TSO - Bryan|2017-11-13|1.8|3.290909091|1|
|TSO - Bryan|2017-11-13|2.35|3.290909091|1|
|TSO - Bryan|2017-11-13|5.67|3.290909091|1|
|TSO - Bryan|2017-11-13|5.57|3.290909091|1|
|TSO - Bryan|2017-11-13|0|3.290909091|1|
|TSO - Bryan|2017-11-13|3.78|3.290909091|1|
|TSO - Bryan|2017-11-13|4.06|3.290909091|1|
|TSO - Bryan|2017-11-13|1.41|3.290909091|1|
|TSO - Capital Plaza|2018-12-06|7.01|6.278|1|
|TSO - Cedar Park|2017-09-15|15.04|7.448|1|
|TSO - Cedar Park|2017-09-15|11.98|7.448|1|
|TSO - Cedar Park|2017-09-15|3.71|7.448|1|
|TSO - Cedar Park|2017-09-15|0|7.448|1|
|TSO - Cedar Park|2017-09-15|6.51|7.448|1|
|TSO - Champions|2018-03-08|0|5.308461538|1|
|TSO - Champions|2018-03-08|10.99|5.308461538|1|
|TSO - Champions|2018-03-08|3.75|5.308461538|1|
|TSO - Champions|2018-03-08|7.94|5.308461538|1|
|TSO - Champions|2018-03-08|0|5.308461538|1|
|TSO - Champions|2018-03-08|10.84|5.308461538|1|
|TSO - Cleburne|2017-11-14|2.08|3.329333333|1|
|TSO - Cleburne|2017-11-14|3.02|3.329333333|1|
|TSO - Cleburne|2017-11-14|3.66|3.329333333|1|
|TSO - Cleburne|2017-11-14|4.66|3.329333333|1|
|TSO - Cleburne|2017-11-14|8.88|3.329333333|1|
|TSO - Cleburne|2017-11-14|4.75|3.329333333|1|
|TSO - Cleburne|2017-11-14|2.67|3.329333333|1|
|TSO - Cleburne|2017-11-14|1.87|3.329333333|1|
|TSO - Cleburne|2017-11-14|3.53|3.329333333|1|
|TSO - Cleburne|2017-11-14|3.83|3.329333333|1|
|TSO - Cleburne|2017-11-14|4.19|3.329333333|1|
|TSO - Cleburne|2017-11-14|0|3.329333333|1|
|TSO - Cleburne|2017-11-14|3.04|3.329333333|1|
|TSO - Cleburne|2017-11-14|1.3|3.329333333|1|
|TSO - Cleburne|2017-11-14|2.46|3.329333333|1|
|TSO - College Station|2018-08-04|2.26|3.4656|1|
|TSO - College Station|2018-08-04|2.9|3.4656|1|
|TSO - College Station|2018-08-04|2.28|3.4656|1|
|TSO - College Station|2018-08-04|3.56|3.4656|1|
|TSO - College Station|2018-08-04|0|3.4656|1|
|TSO - College Station|2018-08-04|3.56|3.4656|1|
|TSO - College Station|2018-08-04|6|3.4656|1|
|TSO - College Station South|2017-11-14|0|4.285|1|
|TSO - College Station South|2017-11-14|4.55|4.285|1|
|TSO - College Station South|2017-11-14|4.24|4.285|1|
|TSO - College Station South|2017-11-14|10|4.285|1|
|TSO - College Station South|2017-11-14|4.5|4.285|1|
|TSO - College Station South|2017-11-14|3.03|4.285|1|
|TSO - College Station South|2017-11-14|4.13|4.285|1|
|TSO - Conroe|2018-05-31|21.56|9.5825|1|
|TSO - Copperfield|2018-03-26|6.82|5.041666667|1|
|TSO - Copperfield|2018-03-26|1.23|5.041666667|1|
|TSO - Copperfield|2018-03-26|6.89|5.041666667|1|
|TSO - Copperfield|2018-03-26|6.42|5.041666667|1|
|TSO - Copperfield|2018-03-26|9.38|5.041666667|1|
|TSO - Copperfield|2018-03-26|5.69|5.041666667|1|
|TSO - Copperfield|2018-03-26|4.99|5.041666667|1|
|TSO - Copperfield|2018-03-26|6.28|5.041666667|1|
|TSO - Corinthian Pointe|2018-05-29|12.6|7.22625|1|
|TSO - Corinthian Pointe|2018-05-29|11.05|7.22625|1|
|TSO - Corinthian Pointe|2018-05-29|0|7.22625|1|
|TSO - Custer Creek|2018-08-04|2.45|13.289714286|1|
|TSO - Custer Creek|2018-08-04|9.29|13.289714286|1|
|TSO - Custer Creek|2018-08-04|3.75|13.289714286|1|
|TSO - Custer Creek|2018-08-04|0|13.289714286|1|
|TSO - Custer Creek|2018-08-04|23.67|13.289714286|1|
|TSO - Custer Creek|2018-08-04|50.01|13.289714286|1|
|TSO - Custer Creek|2018-08-04|4.66|13.289714286|1|
|TSO - Custer Creek|2018-08-04|0|13.289714286|1|
|TSO - Cypress|2018-09-11|10.73|4.671818182|1|
|TSO - Dickinson|2018-06-14|1.92|5.74|1|
|TSO - Dowlen|2017-09-14|6.24|5.388571429|1|
|TSO - Dowlen|2017-09-14|10.55|5.388571429|1|
|TSO - Dowlen|2017-09-14|1.8|5.388571429|1|
|TSO - Dowlen|2017-09-14|5.6|5.388571429|1|
|TSO - Dowlen|2017-09-14|3.44|5.388571429|1|
|TSO - Dowlen|2017-09-14|2.39|5.388571429|1|
|TSO - Dowlen|2017-09-14|7.7|5.388571429|1|
|TSO - Downtown|2018-03-28|7.7|6.398181818|1|
|TSO - Energy Corridor|2018-07-04|9.76|9.831|1|
|TSO - Energy Corridor|2018-07-04|11.36|9.831|1|
|TSO - Energy Corridor|2018-07-04|11.3|9.831|1|
|TSO - Fall Creek|2018-04-28|7.35|5.538|1|
|TSO - Fall Creek|2018-04-28|4.86|5.538|1|
|TSO - Fort Worth|2018-10-16|21.92|8.903333333|1|
|TSO - Galveston|2018-01-22|3.13|2.11125|1|
|TSO - Galveston|2018-01-22|1.84|2.11125|1|
|TSO - Galveston|2018-01-22|0.27|2.11125|1|
|TSO - Galveston|2018-01-22|3.98|2.11125|1|
|TSO - Galveston|2018-01-22|2.86|2.11125|1|
|TSO - Galveston|2018-01-22|0|2.11125|1|
|TSO - Galveston|2018-01-22|3.61|2.11125|1|
|TSO - Gateway|2018-11-02|0.92|3.976666667|1|
|TSO - Gateway|2018-11-02|3.83|3.976666667|1|
|TSO - Glenbrook|2018-05-18|3.49|11.911428571|1|
|TSO - Grand Prairie|2017-11-13|0.54|1.67|1|
|TSO - Grand Prairie|2017-11-13|0|1.67|1|
|TSO - Grand Prairie|2017-11-13|2.01|1.67|1|
|TSO - Grand Prairie|2017-11-13|3.15|1.67|1|
|TSO - Grand Prairie|2017-11-13|1.15|1.67|1|
|TSO - Grand Prairie|2017-11-13|2.85|1.67|1|
|TSO - Grand Prairie|2017-11-13|0|1.67|1|
|TSO - Grand Prairie|2017-11-13|0|1.67|1|
|TSO - Grand Prairie|2017-11-13|3.12|1.67|1|
|TSO - Grand Prairie|2017-11-13|2.33|1.67|1|
|TSO - Grand Prairie|2017-11-13|3.41|1.67|1|
|TSO - Grand Prairie|2017-11-13|0|1.67|1|
|TSO - Grand Prairie|2017-11-13|0.95|1.67|1|
|TSO - Grand Prairie|2017-11-13|1.49|1.67|1|
|TSO - Grand Prairie|2017-11-13|0.67|1.67|1|
|TSO - Grand Prairie|2017-11-13|1.71|1.67|1|
|TSO - Grand Prairie|2017-11-13|0|1.67|1|
|TSO - Grand Prairie|2017-11-13|1.89|1.67|1|
|TSO - Grand Prairie|2017-11-13|0|1.67|1|
|TSO - Grand Prairie|2017-11-13|0|1.67|1|
|TSO - Grand Prairie|2017-11-13|1.39|1.67|1|
|TSO - Grand Prairie|2017-11-13|2.81|1.67|1|
|TSO - Grand Prairie|2017-11-13|6.19|1.67|1|
|TSO - Grand Prairie|2017-11-13|1.8|1.67|1|
|TSO - Grand Prairie|2017-11-13|6.82|1.67|1|
|TSO - Grand Prairie|2017-11-13|0|1.67|1|
|TSO - Grand Prairie|2017-11-13|0.81|1.67|1|
|TSO - Greenspoint|2018-09-12|0|8.206666667|1|
|TSO - Greenspoint|2018-09-12|11.1|8.206666667|1|
|TSO - Greenspoint|2018-09-12|0|8.206666667|1|
|TSO - Heights|2018-05-30|10.97|6.84625|1|
|TSO - Heights|2018-05-30|1.89|6.84625|1|
|TSO - Heights|2018-05-30|3.77|6.84625|1|
|TSO - Humble|2018-06-07|8.9|4.392|1|
|TSO - Humble|2018-06-07|0|4.392|1|
|TSO - Humble|2018-06-07|7.03|4.392|1|
|TSO - Humble|2018-06-07|0|4.392|1|
|TSO - Ingram|2018-12-11|7.2|3.84|1|
|TSO - Ingram|2018-12-11|5.87|3.84|1|
|TSO - Ingram|2018-12-11|5.08|3.84|1|
|TSO - Katy|2018-08-11|10.8|6.873|1|
|TSO - Katy|2018-08-11|12.08|6.873|1|
|TSO - Katy Fry Road|2018-08-11|11.38|6.434285714|1|
|TSO - Katy Ranch|2018-04-23|0|6.564166667|1|
|TSO - Katy Ranch|2018-04-23|3.1|6.564166667|1|
|TSO - Katy Ranch|2018-04-23|9.9|6.564166667|1|
|TSO - Katy Ranch|2018-04-23|0|6.564166667|1|
|TSO - Katy Ranch|2018-04-23|0.57|6.564166667|1|
|TSO - Keller|2017-10-03|13.68|5.531|1|
|TSO - Keller|2017-10-03|0|5.531|1|
|TSO - Keller|2017-10-03|9.08|5.531|1|
|TSO - Keller|2017-10-03|5.49|5.531|1|
|TSO - Kingwood|2018-09-24|9.89|4.787272727|1|
|TSO - Kingwood|2018-09-24|2.07|4.787272727|1|
|TSO - Lake Jackson|2018-02-02|2.89|1.765|1|
|TSO - Lake Jackson|2018-02-02|0.64|1.765|1|
|TSO - League City|2018-05-18|3.66|6.188333333|1|
|TSO - Liberty|2018-03-10|1.24|2.555217391|1|
|TSO - Liberty|2018-03-10|0.5|2.555217391|1|
|TSO - Lumberton|2017-11-13|4.1|3.193333333|1|
|TSO - Lumberton|2017-11-13|4.41|3.193333333|1|
|TSO - Lumberton|2017-11-13|1.07|3.193333333|1|
|TSO - Magnolia|2018-04-05|5.32|7.18|1|
|TSO - Mansfield|2018-12-03|7.21|5.980769231|1|
|TSO - Mansfield|2018-12-03|3|5.980769231|1|
|TSO - Mansfield|2018-12-03|0|5.980769231|1|
|TSO - Mansfield|2018-12-03|9.97|5.980769231|1|
|TSO - McKinney|2017-11-07|6.78|4.928928571|1|
|TSO - McKinney|2017-11-07|5|4.928928571|1|
|TSO - McKinney|2017-11-07|12.98|4.928928571|1|
|TSO - McKinney|2017-11-07|2.46|4.928928571|1|
|TSO - Memorial City|2018-05-23|6.36|8.636|1|
|TSO - Meyerland|2018-11-03|25.74|10.636|1|
|TSO - Missouri City|2018-06-07|38.2|10.706666667|1|
|TSO - Museum District|2018-05-30|6.75|8.519285714|1|
|TSO - Museum District|2018-05-30|2.81|8.519285714|1|
|TSO - Museum District|2018-05-30|0|8.519285714|1|
|TSO - Museum District|2018-05-30|7.37|8.519285714|1|
|TSO - Museum District|2018-05-30|0|8.519285714|1|
|TSO - North Spring|2018-08-14|8.58|7.495714286|1|
|TSO - North Spring|2018-08-14|9.47|7.495714286|1|
|TSO - Northline|2018-04-02|6|5.82|1|
|TSO - Northline|2018-04-02|16.25|5.82|1|
|TSO - Northline|2018-04-02|1.73|5.82|1|
|TSO - Northline|2018-04-02|6.62|5.82|1|
|TSO - Northline|2018-04-02|6.3|5.82|1|
|TSO - Northshore|2018-04-03|15.05|7.3|1|
|TSO - Northwest|2018-04-25|18.25|14.763571429|1|
|TSO - Northwest|2018-04-25|38.4|14.763571429|1|
|TSO - Northwest|2018-04-25|19.8|14.763571429|1|
|TSO - Northwest|2018-04-25|19.5|14.763571429|1|
|TSO - Oak Run|2018-11-05|3.32|5.394444444|1|
|TSO - Oak Run|2018-11-05|0|5.394444444|1|
|TSO - Oak Run|2018-11-05|0|5.394444444|1|
|TSO - Oak Run|2018-11-05|14.19|5.394444444|1|
|TSO - Oak Run|2018-11-05|12.57|5.394444444|1|
|TSO - Oak Run|2018-11-05|1.75|5.394444444|1|
|TSO - Oak Run|2018-11-05|3.59|5.394444444|1|
|TSO - Oak Run|2018-11-05|12.07|5.394444444|1|
|TSO - Pearland|2018-06-26|2.19|4.017272727|1|
|TSO - Pearland|2018-06-26|5.72|4.017272727|1|
|TSO - Pearland|2018-06-26|8.52|4.017272727|1|
|TSO - Pearland|2018-06-26|7.09|4.017272727|1|
|TSO - Pearland|2018-06-26|8.85|4.017272727|1|
|TSO - Pearland|2018-06-26|3.31|4.017272727|1|
|TSO - Portland|2018-11-22|0|1.938333333|1|
|TSO - Riverstone|2018-12-05|8.32|10.2625|1|
|TSO - Riverstone|2018-12-05|8.99|10.2625|1|
|TSO - Riverstone|2018-12-05|17.02|10.2625|1|
|TSO - Rosenberg|2018-11-22|0|4.093|1|
|TSO - Round Rock|2017-11-14|1.11|2.619|1|
|TSO - Round Rock|2017-11-14|4.99|2.619|1|
|TSO - Round Rock|2017-11-14|3.7|2.619|1|
|TSO - Round Rock|2017-11-14|2.13|2.619|1|
|TSO - Round Rock|2017-11-14|1.69|2.619|1|
|TSO - Round Rock|2017-11-14|2.49|2.619|1|
|TSO - Round Rock|2017-11-14|4.8|2.619|1|
|TSO - Round Rock|2017-11-14|5.27|2.619|1|
|TSO - Round Rock|2017-11-14|2.72|2.619|1|
|TSO - Round Rock|2017-11-14|4.69|2.619|1|
|TSO - Round Rock|2017-11-14|3.68|2.619|1|
|TSO - Round Rock|2017-11-14|0|2.619|1|
|TSO - Round Rock|2017-11-14|1.53|2.619|1|
|TSO - Round Rock|2017-11-14|0|2.619|1|
|TSO - Round Rock|2017-11-14|1.37|2.619|1|
|TSO - Round Rock|2017-11-14|3.93|2.619|1|
|TSO - Round Rock|2017-11-14|4.88|2.619|1|
|TSO - Round Rock|2017-11-14|0.94|2.619|1|
|TSO - Round Rock|2017-11-14|0|2.619|1|
|TSO - San Marcos|2018-04-07|4.24|3.802068966|1|
|TSO - San Marcos|2018-04-07|0|3.802068966|1|
|TSO - San Marcos|2018-04-07|0|3.802068966|1|
|TSO - San Marcos|2018-04-07|6.47|3.802068966|1|
|TSO - Santa Fe|2018-08-14|0|8.086|1|
|TSO - Schertz|2018-10-17|9.8|9.8|1|
|TSO - Shadow Creek|2018-03-09|0|5.089090909|1|
|TSO - Shadow Creek|2018-03-09|6.67|5.089090909|1|
|TSO - Sharpstown|2018-08-23|10.69|8.864|1|
|TSO - Shotwell|2018-03-13|4.5|5.8575|1|
|TSO - Shotwell|2018-03-13|5.88|5.8575|1|
|TSO - Shotwell|2018-03-13|6.27|5.8575|1|
|TSO - Silsbee|2018-10-16|5.92|5.92|1|
|TSO - Southmore|2017-11-27|3.89|4.65952381|1|
|TSO - Southmore|2017-11-27|4.78|4.65952381|1|
|TSO - Southmore|2017-11-27|9.87|4.65952381|1|
|TSO - Southmore|2017-11-27|4.03|4.65952381|1|
|TSO - Southmore|2017-11-27|4.95|4.65952381|1|
|TSO - Southmore|2017-11-27|4.89|4.65952381|1|
|TSO - Southmore|2017-11-27|3.55|4.65952381|1|
|TSO - Southmore|2017-11-27|9.76|4.65952381|1|
|TSO - Southmore|2017-11-27|0|4.65952381|1|
|TSO - Southmore|2017-11-27|4.09|4.65952381|1|
|TSO - Southmore|2017-11-27|0|4.65952381|1|
|TSO - Spencer|2018-04-25|5.95|7.68|1|
|TSO - Spring|2018-04-25|9.61|4.988571429|1|
|TSO - Spring|2018-04-25|5.69|4.988571429|1|
|TSO - Spring Klein|2018-08-15|11.88|11.045|1|
|TSO - Spring Rayford|2018-10-05|7.81|6.045294118|1|
|TSO - Spring Rayford|2018-10-05|12.84|6.045294118|1|
|TSO - Spring Rayford|2018-10-05|0|6.045294118|1|
|TSO - Spring Rayford|2018-10-05|8.14|6.045294118|1|
|TSO - Stone Oak|2018-11-11|7|8.74|1|
|TSO - Sugar Land|2018-04-20|2.63|10.799090909|1|
|TSO - Sugar Land|2018-04-20|8.05|10.799090909|1|
|TSO - Sugar Land|2018-04-20|9.76|10.799090909|1|
|TSO - Telfair|2018-03-23|10.84|7.28037037|1|
|TSO - Telfair|2018-03-23|0|7.28037037|1|
|TSO - Telfair|2018-03-23|6.36|7.28037037|1|
|TSO - Telfair|2018-03-23|0|7.28037037|1|
|TSO - Telfair|2018-03-23|5|7.28037037|1|
|TSO - Telfair|2018-03-23|12.17|7.28037037|1|
|TSO - Telfair|2018-03-23|8.06|7.28037037|1|
|TSO - Telfair|2018-03-23|16.76|7.28037037|1|
|TSO - Telfair|2018-03-23|10.83|7.28037037|1|
|TSO - Telfair|2018-03-23|6.75|7.28037037|1|
|TSO - Texas City|2018-04-27|0.93|3.034375|1|
|TSO - Texas City|2018-04-27|7.89|3.034375|1|
|TSO - Tomball|2018-03-30|5.17|3.21125|1|
|TSO - Tomball|2018-03-30|5.62|3.21125|1|
|TSO - Victoria|2017-12-08|5.57|2.495833333|1|
|TSO - Victoria|2017-12-08|2.31|2.495833333|1|
|TSO - West Oaks|2018-01-25|1.24|4.288571429|1|
|TSO - Westlake|2017-11-14|0|2.502941176|1|
|TSO - Westlake|2017-11-14|0|2.502941176|1|
|TSO - Westlake|2017-11-14|0|2.502941176|1|
|TSO - Westlake|2017-11-14|4.51|2.502941176|1|
|TSO - Westlake|2017-11-14|1.18|2.502941176|1|
|TSO - Westlake|2017-11-14|5.16|2.502941176|1|
|TSO - Westlake|2017-11-14|0|2.502941176|1|
|TSO - Westlake|2017-11-14|0|2.502941176|1|
|TSO - Westlake|2017-11-14|4.23|2.502941176|1|
|TSO - Westlake|2017-11-14|4.04|2.502941176|1|
|TSO - Westlake|2017-11-14|2.28|2.502941176|1|
|TSO - Westlake|2017-11-14|0|2.502941176|1|
|TSO - Westlake|2017-11-14|5|2.502941176|1|
|TSO - Westlake|2017-11-14|5.33|2.502941176|1|
|TSO - Westlake|2017-11-14|5|2.502941176|1|
|TSO - Westlake|2017-11-14|4.88|2.502941176|1|
|TSO - Willowbrook|2018-05-21|10.4|8.063571429|1|
|TSO - Willowbrook|2018-05-21|13.37|8.063571429|1|
|TSO - Willowbrook|2018-05-21|5.56|8.063571429|1|
|TSO - Woodlands|2018-05-24|13.35|11.454|1|
|TSO.COM|2018-01-17|1.55|5.123333333|1|
|TSO.COM|2018-01-17|11.04|5.123333333|1|
|TSO.COM|2018-01-17|2.78|5.123333333|1|
|Tempe Eyecare Associates|2018-07-16|2.66|3.518|1|
|Tempe Eyecare Associates|2018-07-16|4.21|3.518|1|
|Tempe Eyecare Associates|2018-07-16|2.73|3.518|1|
|Tempe Eyecare Associates|2018-07-16|4.03|3.518|1|
|Tempe Eyecare Associates|2018-07-16|3.96|3.518|1|
|The Eye Center|2018-06-23|12.04|8.11|1|
|TotalVision|2018-11-05|0|5.452777778|1|
|TotalVision|2018-11-05|19.81|5.452777778|1|
|TotalVision|2018-11-05|0|5.452777778|1|
|TotalVision|2018-11-05|0|5.452777778|1|
|TotalVision|2018-11-05|6.66|5.452777778|1|
|Triangle Family Eye Care|2018-02-06|4.27|2.253|1|
|Triangle Family Eye Care|2018-02-06|0|2.253|1|
|Triangle Family Eye Care|2018-02-06|2.96|2.253|1|
|Triangle Family Eye Care|2018-02-06|4.29|2.253|1|
|Triangle Family Eye Care|2018-02-06|0|2.253|1|
|Triangle Family Eye Care|2018-02-06|0|2.253|1|
|Triangle Family Eye Care|2018-02-06|3.45|2.253|1|
|Valley Vision Optometry|2017-12-06|5.9|4.8|1|
|Valley Vision Optometry|2017-12-06|0|4.8|1|
|Washington Eye Doctors|2018-08-27|11.17|7.423333333|1|
|Westwood & Montrose|2018-04-13|6.62|5.558125|1|
|Westwood & Montrose|2018-04-13|7.3|5.558125|1|
|Westwood & Montrose|2018-04-13|7.99|5.558125|1|
|Westwood & Montrose|2018-04-13|0|5.558125|1|
|Westwood & Montrose|2018-04-13|0|5.558125|1|
|Westwood & Montrose|2018-04-13|4.62|5.558125|1|
|Yesnick Vision Center|2017-06-15|11.21|14.407142857|1|