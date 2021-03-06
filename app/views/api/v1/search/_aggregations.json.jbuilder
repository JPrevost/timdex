json.aggregations do
  json.language @results['aggregations']['languages']['buckets'] do |x|
    json.name x['key']
    json.count x['doc_count']
  end

  json.content_type @results['aggregations']['content_type']['buckets'] do |x|
    json.name x['key']
    json.count x['doc_count']
  end

  json.contributor @results['aggregations']['contributors']['contributor_names']['buckets'] do |x|
    json.name x['key']
    json.count x['doc_count']
  end

  json.subject @results['aggregations']['subjects']['buckets'] do |x|
    json.name x['key']
    json.count x['doc_count']
  end

  json.content_format @results['aggregations']['content_format']['buckets'] do |x|
    json.name x['key']
    json.count x['doc_count']
  end

  json.literary_form @results['aggregations']['literary_form']['buckets'] do |x|
    json.name x['key']
    json.count x['doc_count']
  end

  json.source @results['aggregations']['source']['buckets'] do |x|
    json.name x['key']
    json.count x['doc_count']
  end
end
