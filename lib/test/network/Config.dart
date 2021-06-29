const serviceUrl = "https://ti-api.inkr.xyz/";
const servicePath = {
  "service_time" : serviceUrl + "IFGetTime"
};

const headers = {
  'Accept': 'application/json, text/plain',
  'Accept-Encoding': 'gzip, deflate, br',
  'Accept-Language': 'zh-CN,zh;q=0.9',
  'Connection': 'keep-alive',
  'Host': 'time.geekbang.org',
  'Content_Type': 'text/plain',
  'Origin': 'https://www.geekbang.org',
  'Referer': 'https://www.geekbang.org/',
  'sec-ch-ua':
      '"Not;A Brand";v="99", "Google Chrome";v="91", "Chromium";v="91"',
  'sec-ch-ua-mobile': '?0',
  'Sec-Fetch-Dest': 'empty',
  'Sec-Fetch-Mode': 'cors',
  'Sec-Fetch-Site': 'cross-site',
  'User-Agent':
      'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'
};

const juejinHeaders = {
  'Accept': '',
  'Accept-Encoding': 'gzip, deflate, br',
  'Accept-Language': 'zh-CN,zh;q=0.9',
  'Content_Type': 'application/json',
  'Origin': 'https://juejin.cn',
  'Referer': 'https://juejin.cn/',
  'cookie':
      'MONITOR_WEB_ID=14559c02-3b08-4028-bb99-eb39a1a324ea; _ga=GA1.2.473110598.1620612747; _gid=GA1.2.322772908.1624945113',
  'sec-ch-ua':
      '"Not;A Brand";v="99", "Google Chrome";v="91", "Chromium";v="91"',
  'sec-ch-ua-mobile': '?0',
  'Sec-Fetch-Dest': 'empty',
  'Sec-Fetch-Mode': 'cors',
  'Sec-Fetch-Site': 'same-site',
  'User-Agent':
      'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36'
};
