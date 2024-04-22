class QuotesModel
{
  int?count,totalCount,totalPages,lastItemIndex,page;
  List<ResultsModel>? resultlist=[];
  QuotesModel(
      {this.count,
      this.totalCount,
      this.totalPages,
      this.lastItemIndex,
      this.resultlist,this.page});
  factory QuotesModel.mapToModel(Map m1)
  {
    List r1=m1['results'];
    List<ResultsModel> r2=r1.map((e) => ResultsModel.mapToModel(e)).toList();
    return QuotesModel(count:m1['count'],totalPages:m1['totalPages'],totalCount:m1['totalCount'],lastItemIndex:m1['lastItemIndex'],resultlist: r2,page: m1['page']);
  }
}
class ResultsModel
{
  String?id,author,content,authorSlug,dateAdded,dateModified;
  int?length;
  // List<TagModel>?teglist=[];

  ResultsModel(
      {this.id,
      this.author,
      this.content,
      this.authorSlug,
      this.dateAdded,
      this.dateModified,
      this.length,
      });
  factory ResultsModel.mapToModel(Map m1)
  {
    // List  list=m1['tags'];
    // List<TagModel> data=list.map((e) => TagModel.mapToModel(e)).toList();
    return ResultsModel(id:m1['_id'] ,author:m1['author'] ,content:m1['content'] ,authorSlug:m1['authorSlug'] ,dateAdded: m1['dateAdded'],dateModified:m1['dateModified'] ,length:m1['length']);
  }
}
// class TagModel
// {
//   String?tags;
//
//   TagModel({this.tags});
//   factory TagModel.mapToModel(Map m1)
//   {
//    return TagModel(tags: m1['tags']);
//   }
