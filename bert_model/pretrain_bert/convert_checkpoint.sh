export BERT_BASE_DIR=./bert-mini
python convert_checkpoint.py \
  --tf_checkpoint $BERT_BASE_DIR/bert_model.ckpt-300000 \
  --config=./config_base.json \
  --pytorch_dump_output=./pytorch_model.bin