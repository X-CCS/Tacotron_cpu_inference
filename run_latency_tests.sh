bash test_infer.sh -bs 1 -il 128 -p amp --num-iters 1003 --tacotron2 JoC_WaveGlow_FP32_PyT_20190306 --waveglow JoC_WaveGlow_FP32_PyT_20190306
bash test_infer.sh -bs 4 -il 128 -p amp --num-iters 1003 --tacotron2 JoC_WaveGlow_FP32_PyT_20190306 --waveglow JoC_WaveGlow_FP32_PyT_20190306
bash test_infer.sh -bs 1 -il 128 -p fp32 --num-iters 1003 --tacotron2 JoC_WaveGlow_FP32_PyT_20190306 --waveglow JoC_WaveGlow_FP32_PyT_20190306
bash test_infer.sh -bs 4 -il 128 -p fp32 --num-iters 1003 --tacotron2 JoC_WaveGlow_FP32_PyT_20190306 --waveglow JoC_WaveGlow_FP32_PyT_20190306
