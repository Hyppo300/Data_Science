## First Spider
```python
import scrapy

class QuoteSpider(scrapy.Spider):
    name = 'quotes'
    start_urls = [
        'http://quotes.toscarpe.com/'
    ]

    def parse(self, response):
        title = response.css('title::text').extract()
        yield {'title_text': title}
```
