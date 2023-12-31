<main>
    <div class="container tours_container">
        <div class="filters">
            <img src="media/images/filters.svg" alt="Фильтры">
            Фильтры
        </div>
        <form id="filter_form">
            <dialog id="dialog_filters">
                <div id="modal_content" class="modal">
                    <div class="filters_row">
                        <div class="filters_col">
                            <div class="filters_col_title">Место</div>
                            <div class="input_wrapper">
                                <label for="place_udm">Удмуртия</label>
                                <input name="place[]" id="place_udm" type="checkbox" value="Удмуртия">
                            </div>
                            <div class="input_wrapper">
                                <label for="place_izh">Ижевск</label>
                                <input name="place[]" id="place_izh" type="checkbox" value="Ижевск">
                            </div>
                            <div class="input_wrapper">
                                <label for="place_vot">Воткинск</label>
                                <input name="place[]" id="place_vot" type="checkbox" value="Воткинск">
                            </div>
                            <div class="input_wrapper">
                                <label for="place_sar">Сарапул</label>
                                <input name="place[]" id="place_sar" type="checkbox" value="Сарапул">
                            </div>
                            <div class="input_wrapper">
                                <label for="place_glz">Глазов</label>
                                <input name="place[]" id="place_glz" type="checkbox" value="Глазов">
                            </div>
                            <div class="input_wrapper">
                                <label for="place_mzh">Можга</label>
                                <input name="place[]" id="place_mzh" type="checkbox" value="Можга">
                            </div>
                            <div class="input_wrapper">
                                <label for="place_cum">Камбарка</label>
                                <input name="place[]" id="place_cum" type="checkbox" value="Камбарка">
                            </div>
                        </div>
                        <div class="filters_col">
                            <div class="filters_col_title">Длительность</div>
                            <label for="time_low">От</label>
                            <select name='time_low' id='time_low'>
                                <option value='30' selected>30 минут</option>
                                <option value='60'>1 час</option>
                                <option value='120'>2 часа</option>
                                <option value='240'>4 часа</option>
                                <option value='720'>12 часов</option>
                                <option value='1440'>1 день</option>
                                <option value='4320'>3 дня</option>
                            </select>
                            <label for="time_high">До</label>
                            <select name='time_high' id='time_high'>
                                <option value='60'>1 час</option>
                                <option value='120'>2 часа</option>
                                <option value='240'>4 часа</option>
                                <option value='720'>12 часов</option>
                                <option value='1440'>1 день</option>
                                <option value='4320'>3 дня</option>
                                <option value='10080' selected>1 неделя</option>
                            </select>
                        </div>
                        <div class="filters_col">
                            <div class="filters_col_title">Возраст</div>
                            <div class="input_wrapper">
                                <label for="time_hour">0+</label>
                                <input name="age[]" id="time_hour" type="checkbox" value="0+">
                            </div>
                            <div class="input_wrapper">
                                <label for="time_hour3">6+</label>
                                <input name="age[]" id="time_hour3" type="checkbox" value="6+">
                            </div>
                            <div class="input_wrapper">
                                <label for="time_day">12+</label>
                                <input name="age[]" id="time_day" type="checkbox" value="12+">
                            </div>
                            <div class="input_wrapper">
                                <label for="time_day3">16+</label>
                                <input name="age[]" id="time_day3" type="checkbox" value="16+">
                            </div>
                            <div class="input_wrapper">
                                <label for="time_week">18+</label>
                                <input name="age[]" id="time_week" type="checkbox" value="18+">
                            </div>
                        </div>
                        <div class="filters_col">
                            <div class="filters_col_title">Цена</div>
                            <div class="input_price">
                                <label for="price_low">От: </label>
                                <input id="price_low" type="number" min="100" max="25000" value="100" name="price_low">
                            </div>
                            <div class="input_price">
                                <label for="price_high">До: </label>
                                <input id="price_high" type="number" min="100" max="25000" value="25000" name="price_high">
                            </div>
                        </div>
                    </div>
                    <div class="filters_controls">
                        <button class="filters_reset">
                            <svg id="svg_filters_reset" fill="#ffffff" width="16px" height="16px" viewBox="0 0 512 512" data-name="Layer 1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"><path d="M64,256H34A222,222,0,0,1,430,118.15V85h30V190H355V160h67.27A192.21,192.21,0,0,0,256,64C150.13,64,64,150.13,64,256Zm384,0c0,105.87-86.13,192-192,192A192.21,192.21,0,0,1,89.73,352H157V322H52V427H82V393.85A222,222,0,0,0,478,256Z"/></svg>
                            Сбросить
                        </button>
                        <div class="flex">
                            <button class="filters_cancel">Отмена</button>
                            <button class="filters_confirm">
                                <svg id="svg_filters_confirm" fill="#ffffff" width="16px" height="16px" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"><path d="m16 0c8.836556 0 16 7.163444 16 16s-7.163444 16-16 16-16-7.163444-16-16 7.163444-16 16-16zm0 2c-7.7319865 0-14 6.2680135-14 14s6.2680135 14 14 14 14-6.2680135 14-14-6.2680135-14-14-14zm6.6208153 9.8786797c.3905243.3905242.3905243 1.0236892 0 1.4142135l-7.0710678 7.0710678c-.3626297.3626297-.9344751.3885319-1.3269928.0777064l-.0872208-.0777064-4.24264068-4.2426407c-.39052429-.3905242-.39052429-1.0236892 0-1.4142135.39052428-.3905243 1.02368928-.3905243 1.41421358 0l3.5348268 3.5348268 6.3646681-6.3632539c.3905243-.3905243 1.0236893-.3905243 1.4142136 0z"/></svg>
                                Применить
                            </button>
                        </div>
                        
                    </div>
                    
                </div>
            </dialog>
        </form>
        <div class="tours_list">
            <?include 'include/tours_list.php'?>       
        </div>
    </div>
</main>

<script>
    document.getElementById("tours").classList.add("btn_header_active");
    $(".filters_reset").click((event) => {
        event.preventDefault();
        window.location.reload();
    });
    $(".filters_cancel").click((event) => {
        event.preventDefault();
        document.getElementById("dialog_filters").close();
    });
    $(".filters_confirm").click(function() {
        event.preventDefault();
        var setdata = $("#filter_form").serialize();    
        $.post('include/tours_list.php', setdata, function(data) {
            $('.tours_list').html(data);
            document.getElementById("dialog_filters").close();
        });
    });
</script>