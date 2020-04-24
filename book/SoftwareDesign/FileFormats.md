
# File Formats

A list of different file formats and they advantages and disadvantages

#### Apache ORC
- [ORC -Optimized Row Columnar-](https://orc.apache.org)
- Self-describing type-aware columnar file format 
- Designed for Hadoop workloads
- Optimized for large streaming reads
- Integrated support for finding required rows quickly
- The writer chooses the most appropriate encoding for the type and builds 
  an internal index as the file is written
- ORC files are divided in to stripes that are roughly 64MB by default
- The stripes in a file are independent of each other and form the natural 
  unit of distributed work ???
- Within each stripe, the columns are separated from each other so the 
  reader can read just the columns that are required ???
- All ORC file are logically sequences of identically typed objects
- Hive always uses a struct with a field for each of the top-level columns
  as the root object type, but that is not required
- Timestamp with local time zone is a fixed instant in time, which does
  change based on the time zone of the reader
- ORC provides three level of indexes within each file
- file level - statistics about the values in each column across the entire
  file
- stripe level - statistics about the values in each column for each stripe
- row level - statistics about the values in each column for each set of 
  10,000 rows within a stripe
- The file and stripe level column statistics are in the file footer so
  that they are easy to access to determine if the rest of the file needs
  to be read at all
- The indexes can include bloom filters
- The indexes at all levels are used by the reader using Search ARGuments
  or SARGs, which are simplified expressions that restrict the rows that
  are of interest
- [ACID support](https://orc.apache.org/docs/acid.html)
- HDFS is a write once file system and ORC is a write-once file format, so
  edits were implemented using base files and delta files where insert,
  update, and delete operations are recorded
- When to many deltas have been created, a compaction will run, minor or 
  major
- Reads and compactions do not require locks and thus compactions can not 
  destructively modify their inputs, but rather write new directories
- All rows are given an automatic assigned row id, which is the triple of
  original transaction id, bucket, and row id, that is guaranteed to be 
  unique
- All update and delete operations refer to that triple

#### RCFile
- [RCFile, Record Columnar File](https://en.wikipedia.org/wiki/RCFile)
- RCFile combines merits of row-store and column-store via 
  horizontal-vertical partitioning! (Mostly like acheive none)

#### Parquet
- [Parquet](https://parquet.apache.org/documentation/latest/)

#### Apache Carbon Data


#### ...
- [EEL](https://github.com/51zero/eel-sdk) : A low level Scala API for 
  working with common file formats with Scala features. Almost abandend
- [Comparison of Avro, Parquet, ORC and CarbonData](
  https://www.jowanza.com/blog/which-hadoop-file-format-should-i-use)
  - Avro
    - Avro’s main goal is to compress data and to do it without losing schema 
      flexibility
    - Avro files are dynamically typed
  - Parquet
    - Porpuse : very efficient comparison and encoding schema
    - Nested Types ???
    - Unit of parallelization
      - MapReduce - File/Row Group
      - IO - Column chunk
      - Encoding/Compression - Page
  - ORC
    - More efficient than Parquet in some cases
    - Supports Indices
- Whether or not a column-oriented system will be more efficient in operation
  depends heavily on the operations being automated. Operations that retrieve
  data for objects would be slower, requiring numerous disk operations to
  assemble data from different columns to build up a whole-row record
