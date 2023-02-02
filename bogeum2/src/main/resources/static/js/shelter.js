function shelterSearch() {



    var xhr = new XMLHttpRequest();
    var url = 'http://apis.data.go.kr/1543061/abandonmentPublicSrvc/abandonmentPublic'; /*URL*/
    var queryParams = '?' + encodeURIComponent('serviceKey') + '=' + 'PDUYcZF9dcMRdEkUd1Pw9rGid%2BJo0ZfjB3LCXuea%2BFybDCjXK%2FsY5e8uyVqZGqCdwUijgAfBM31dtYDTZmWpOQ%3D%3D'; /*Service Key*/

    queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('9'); /*페이지당 보여줄 갯수*/
    queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /*페이지 번호*/
    queryParams += '&' + encodeURIComponent('_type') + '=' + encodeURIComponent('JSON'); /*응답형태*/
    queryParams += '&' + encodeURIComponent('upkind') + '=' + encodeURIComponent($('input:radio[name=animal]:checked').val()); /*축종코드 개 : 417000, 고양이 : 422400*/
    queryParams += '&' + encodeURIComponent('neuterYn') + '=' + encodeURIComponent($('input:radio[name=neuter]:checked').val()); /*(전체 : null(빈값), 예 : Y, 아니오 : N, 미상 : U*/
// queryParams += '&' + encodeURIComponent('kind') + '=' + encodeURIComponent(''); /*품종코드*/
    queryParams += '&' + encodeURIComponent('state') + '=' + encodeURIComponent('notice'); /*상태 notice:보호중 */
    queryParams += '&' + encodeURIComponent('bgnde') + '=' + encodeURIComponent($('#notice-date').val()); /*유기날짜 검색 시작일 YYYYMMDD */
// queryParams += '&' + encodeURIComponent('endde') + '=' + encodeURIComponent('20230201'); /*유기날짜 검색 종료일*/
    queryParams += '&' + encodeURIComponent('upr_cd') + '=' + encodeURIComponent($('#city').val()); /*시도코드*/
// queryParams += '&' + encodeURIComponent('org_cd') + '=' + encodeURIComponent(''); /*보호소번호*/

    xhr.open('GET', url + queryParams);
    xhr.onreadystatechange = function () {
        if (this.readyState == 4) {
            alert($('input:radio[name=animal]:checked').val())
            document.write('Status: ' + this.status + 'nHeaders: ' + JSON.stringify(this.getAllResponseHeaders()) + 'nBody: ' + this.responseText);
        }
    };
    xhr.send('');
}