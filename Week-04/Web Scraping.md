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
For extracting data/CSS selectors, we will use following commands:

```terminal
scrapy shell "http://quotes.toscrape.com/"
```
