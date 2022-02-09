# RMRR DeepStack model birds
A concept [DeepStack](https://github.com/johnolafenwa/DeepStack) YOLOV5 model for detection of what kinds of birds are at my feeder. Note I guessed at many of these so the names might be wrong but each class should be close to being all mapped the same kind of bird.

## How to use:

To use the model download the `birds.pt` file to your `C:\DeepStack\MyModels` folder. (Can be any folder but Blue Iris defaults to C:\DeepStack\MyModels)

1. Add a folder inside your DeepStack instance (If you run on Host) or mount it in Docker.

2. Run DeepStack with the command `--MODELSTORE-DETECTION "C:/DeepStack/MyModels"` See [DeepStack utils](https://github.com/avatar42/deepstack) for more info on setting up and testing your set up.

3. To use RMRR detection call the end point `/v1/vision/custom/birds` with your picture and you get a response similar to this if it finds a known object:

```python
{
'success': True,
'predictions': [{
  'confidence': 0.93365675,
  'label': 'bird_crow',
  'y_min': 279,
  'x_min': 640,
  'y_max': 340,
  'x_max': 767
  }]
}
```

The list of currently trained for objects in in [birds_classes.txt](./birds_classes.txt)

[trainTest](https://github.com/avatar42/deepstack/blob/main/trainTest.py) results are in [train/trainTest.results.txt](https://github.com/avatar42/RMRR.birds/blob/main/train/trainTest.results.txt)

[debug.pics](https://github.com/avatar42/RMRR.birds/tree/main/debug.pics) contains training run debug images highlighting where the model did not fully align with expected results, suggested map changes and such.

For more details on training see [DeepStack training](https://securitycam101.rmrr42.com/2021/12/deepstack-training.html)

For more help setting and or debugging a DeepStack setup see [Quick Blue Iris with DeepStack debug](https://securitycam101.rmrr42.com/2021/10/quick-blue-iris-with-deepstack-debug.html)

See [runTrain.bat](runTrain.bat) for an example of running training locally with my [DeepStack Utils repo](https://github.com/avatar42/deepstack) style setup.

# Training results
![confusion_matrix.png](train-runs/confusion_matrix.png)
![labels.jpg](train-runs/labels.jpg)
![labels_correlogram.jpg](train-runs/labels_correlogram.jpg)
![precision_recall_curve.png](train-runs/precision_recall_curve.png)
![results.png](train-runs/results.png)
![test_batch0_labels.jpg](train-runs/test_batch0_labels.jpg)
![test_batch0_pred.jpg](train-runs/test_batch0_pred.jpg)
![test_batch1_labels.jpg](train-runs/test_batch1_labels.jpg)
![test_batch1_pred.jpg](train-runs/test_batch1_pred.jpg)
![test_batch2_labels.jpg](train-runs/test_batch2_labels.jpg)
![test_batch2_pred.jpg](train-runs/test_batch2_pred.jpg)
![train_batch0.jpg](train-runs/train_batch0.jpg)
![train_batch1.jpg](train-runs/train_batch1.jpg)
![train_batch2.jpg](train-runs/train_batch2.jpg)