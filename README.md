# Tacotron_cpu_inference
Convert GPU inference to CPU inference, basically remove amp and cuda() related
1. Assume you already have downloaded and preprocessed the dataset as quick start: https://github.com/NVIDIA/DeepLearningExamples/tree/master/PyTorch/SpeechSynthesis/Tacotron2
2. Assume you already have the FP32 checkpoints which could be download from the links in the notebook: https://github.com/NVIDIA/DeepLearningExamples/blob/master/PyTorch/SpeechSynthesis/Tacotron2/notebooks/Tacotron2.ipynb
3. You don't need to run PyTorch NGC container for CPU inference, simply use PyTorch CPU version (I am using 1.5) from: https://pytorch.org/get-started/locally/
4. You may need to install dllogger by running: pip install 'git+https://github.com/NVIDIA/dllogger'   If you get this error:ModuleNotFoundError: No module named 'dllogger'
5. Now you can run inference on CPU: $ python inference.py --tacotron2 JoC_Tacotron2_FP32_PyT_20190306 --waveglow JoC_WaveGlow_FP32_PyT_20190306 -o output/ -i phrases/phrase.txt
6.You can also run the inference scripts for more extensive testing: test_infer.sh run_latency_tests.sh which could take quite a while
