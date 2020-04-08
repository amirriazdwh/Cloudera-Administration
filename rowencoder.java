import java.util.ArrayList;
import java.util.List;
import org.apache.spark.api.java.function.MapFunction;
import org.apache.spark.sql.Dataset;
import org.apache.spark.sql.Encoders;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.RowFactory;
import org.apache.spark.sql.SparkSession;
import org.apache.spark.sql.catalyst.encoders.RowEncoder;
import org.apache.spark.sql.types.DataTypes;
import org.apache.spark.sql.types.StructType;
import static org.apache.spark.sql.functions.col;
import static org.apache.spark.sql.functions.*;;

public class DataFrameDocumentation {

public static void main(String[] args) {

SparkSession spark = SparkSession.builder().appName("documentation").master("local").getOrCreate();

spark.sparkContext().setLogLevel("ERROR");

Dataset<String> dataframe = spark.read().text("C:\\codebase\\scala-project\\inputdata\\rating_data")
.as(Encoders.STRING());

List<org.apache.spark.sql.types.StructField> listOfStructField = new ArrayList<org.apache.spark.sql.types.StructField>();

listOfStructField.add(DataTypes.createStructField("movie_name", DataTypes.StringType, true));
listOfStructField.add(DataTypes.createStructField("rating", DataTypes.StringType, true));

StructType structType = DataTypes.createStructType(listOfStructField);

Dataset<Row> dataframeRowEncoder = dataframe.map(new MapFunction<String, Row>() {

private static final long serialVersionUID = 445454;

@Override
public Row call(String arg0) throws Exception {
// TODO Auto-generated method stub

return RowFactory.create(arg0.split(",")[0], "1,2,3,4");
}
}, RowEncoder.apply(structType));

Dataset<Row> splitDataSet=dataframeRowEncoder.withColumn("rating1", split(col("rating"), ",").getItem(0))
.withColumn("rating2", split(col("rating"), ",").getItem(1))
.withColumn("rating3", split(col("rating"), ",").getItem(2))
.withColumn("rating4", split(col("rating"), ",").getItem(0));

splitDataSet.show();

//Lets drop the rating column as the same as been split into multiple columns

splitDataSet.drop(col("rating")).show();