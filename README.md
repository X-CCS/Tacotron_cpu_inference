# Tacotron_cpu_inference
Convert GPU inference code to CPU inference using TorchScript, basically remove amp and cuda() related parts, add TorchScript code in test_infer.py, it is based on: https://github.com/NVIDIA/DeepLearningExamples/tree/master/PyTorch/SpeechSynthesis/Tacotron2

1. Tacotron2 and WaveGlow checkpoints for inference can be downloaded from NGC, and place in the current directory:

 https://ngc.nvidia.com/catalog/models/nvidia:tacotron2pyt_fp16/files?version=3 
 
 https://ngc.nvidia.com/catalog/models/nvidia:waveglow256pyt_fp16/files?version=2
 
3. You don't need to run PyTorch NGC container for CPU inference, simply use PyTorch CPU version (I am using 1.5) from: https://pytorch.org/get-started/locally/

4. You may need to install dllogger by running: pip install 'git+https://github.com/NVIDIA/dllogger'   

If you get this error: ModuleNotFoundError: No module named 'dllogger'

5. Now you can run inference on CPU: $ python inference.py --tacotron2 tacotron2_1032590_6000_amp --waveglow waveglow_1076430_14000_amp --wn-channels 256 -o output/ -i phrases/phrase.txt

6.You can also run the inference scripts for benchmarking which could take quite a while:

bash test_infer.sh 

bash run_latency_tests.sh (with different batch size)
