{OVERALL_GAME_HEADER}

<!--
--------
-- BGA framework: © Gregory Isabelli <gisabelli@boardgamearena.com> & Emmanuel Colin <ecolin@boardgamearena.com>
-- Pins & Needles implementation : © Ori Avtalion <ori@avtalion.name>
--
-- This code has been produced on the BGA studio platform for use on http://boardgamearena.com.
-- See http://en.boardgamearena.com/#!doc/Studio for more information.
-------

    heartsla_heartsla.tpl

    This is the HTML template of your game.

    Everything you are writing in this file will be displayed in the HTML page of your game user interface,
    in the "main game zone" of the screen.

    You can use in this template:
    _ variables, with the format {MY_VARIABLE_ELEMENT}.
    _ HTML block, with the BEGIN/END format

    See your "view" PHP file to check how to set variables and control blocks

    Please REMOVE this comment before publishing your game on BGA
-->

<div id="player_{TOP_PLAYER_ID}_strawmen_wrap" class="whiteblock">
    <h3>Opponent's strawmen</h3>
    <div>
        <div class="straw" id="playerstraw_{TOP_PLAYER_ID}_1"></div>
        <div class="straw" id="playerstraw_{TOP_PLAYER_ID}_2"></div>
        <div class="straw" id="playerstraw_{TOP_PLAYER_ID}_3"></div>
        <div class="straw" id="playerstraw_{TOP_PLAYER_ID}_4"></div>
        <div class="straw" id="playerstraw_{TOP_PLAYER_ID}_5"></div>
    </div>
</div>

<div id="centerarea">

<div id="playertables">

    <!-- BEGIN player -->
    <div id="playertable_{PLAYER_ID}" class="playertable whiteblock playertable_{DIR}">
        <div class="playertablename" style="color:#{PLAYER_COLOR}">
            {PLAYER_NAME}
        </div>
        <div class="playertablecard" id="playertablecard_{PLAYER_ID}"></div>
        <span class="playertable_info">
            <span>{SCORE_PILE}: </span>
            <span id="score_pile_{PLAYER_ID}"></span>
        </span>
    </div>
    <!-- END player -->

</div>

<div id="trumpSelector" class="whiteblock">
    <div>
    <div>{TRUMP_RANK}:</div>
    <div id="trump_rank" class="trump_indicator"></div>
    <ul id="rankSelector">
        <li data-type="rank" data-id="1">1</li>
        <li data-type="rank" data-id="2">2</li>
        <li data-type="rank" data-id="3">3</li>
        <li data-type="rank" data-id="4">4</li>
        <li data-type="rank" data-id="5">5</li>
        <li data-type="rank" data-id="6">6</li>
        <li data-type="rank" data-id="7">7</li>
        <li data-type="rank" data-id="8">8</li>
        <li data-type="rank" data-id="9">9</li>
    </ul>
    </div>
    <br>
    <div>
    <div>{TRUMP_SUIT}:</div>
    <div id="trump_suit" class="trump_indicator"></div>
    <ul id="suitSelector">
        <li data-type="suit" class="suit_icon_1" data-id="1"></li>
        <li data-type="suit" class="suit_icon_2" data-id="2"></li>
        <li data-type="suit" class="suit_icon_3" data-id="3"></li>
        <li data-type="suit" class="suit_icon_4" data-id="4"></li>
    </ul>
    </div>
</div>

</div>

<div id="player_{BOTTOM_PLAYER_ID}_strawmen_wrap" class="whiteblock">
    <h3>{MY_STRAWMEN}</h3>
    <div id="mystrawmen">
        <div class="straw" id="playerstraw_{BOTTOM_PLAYER_ID}_1"></div>
        <div class="straw" id="playerstraw_{BOTTOM_PLAYER_ID}_2"></div>
        <div class="straw" id="playerstraw_{BOTTOM_PLAYER_ID}_3"></div>
        <div class="straw" id="playerstraw_{BOTTOM_PLAYER_ID}_4"></div>
        <div class="straw" id="playerstraw_{BOTTOM_PLAYER_ID}_5"></div>
    </div>
</div>
<div id="myhand_wrap" class="whiteblock">
    <h3>{MY_HAND}</h3>
    <div id="myhand">
    </div>
</div>


<script type="text/javascript">

// Javascript HTML templates

var jstpl_cardontable = '<div class="cardontable" id="cardontable_${player_id}" style="background-position:-${x}% -${y}%"></div>';
var jstpl_strawman = '<div class="strawcard" id="straw_${player_id}_${straw_num}" style="background-position:-${x}% -${y}%"></div>';
var jstpl_player_hand_size = '\<div class="bgavid_hand_size">\
    \<span id="player_hand_size_${id}" class="player_hand_size_value">0\</span>\
    \<span class="fa fa-hand-paper-o bgavid_hand_size_icon"/>\
</div>';

</script>

{OVERALL_GAME_FOOTER}
