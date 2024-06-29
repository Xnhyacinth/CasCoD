###
 # Copyright (c) 2024 by Huanxuan Liao, huanxuanliao@gmail.com, All Rights Reserved. 
 # @Author: Xnhyacinth, Xnhyacinth@qq.com
 # @Date: 2024-06-29 10:01:59
### 



# nohup bash shell/run_distilled_cot.sh > a.log 2>&1 &

# dataset=(bbh_eval_dataset bb_eval_dataset agieval_eval_dataset arcc_eval_dataset arce_eval_dataset)
dataset=(bb_eval_dataset agieval_eval_dataset)
i=5
for value in ${dataset[@]}
do
  echo $value
  val=`expr $i + 1`
  echo $i $val
  nohup bash shell/eval_vanilla.sh 2 $i,$val $value > logs/$value.log 2>&1 &
  i=`expr $i + 2`
done

# nohup bash shell/eval_vanilla.sh > b.log 2>&1 &
# nohup bash shell/eval_vanilla.sh > c.log 2>&1 &