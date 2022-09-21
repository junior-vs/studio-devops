# Kafka

 ```bash
 docker exec -it <container name> /bin/bash
 cd opt/bitnami/kafka/
 ```
 ```bash
  docker exec -it  lab001-kafka-1 /bin/bash

#create topico
  ./bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic LOJA_NOVO_PEDIDO 

#listar Topico
./bin/kafka-topics.sh --list --bootstrap-server localhost:9092


#detalhes
  ./bin/kafka-topics.sh --describe --topic LOJA_NOVO_PEDIDO --bootstrap-server localhost:9092


#produto de mensage 
./bin/kafka-console-producer.sh --topic LOJA_NOVO_PEDIDO  --bootstrap-server localhost:9092

#consumidor de mensagem - Partir do momento 
./bin/kafka-console-consumer.sh --topic LOJA_NOVO_PEDIDO --bootstrap-server localhost:9092

#consumidor de mensagem - desde o inicio do topico
./bin/kafka-console-consumer.sh --topic LOJA_NOVO_PEDIDO --from-beginning --bootstrap-server localhost:9092

 #cosumidor qualificando em grupo
/bin/kafka-console-consumer.sh --topic LOJA_NOVO_PEDIDO --from-beginning --bootstrap-server localhost:9092 --consumer-property group.id=grupo-1



  ```
