<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<databrowser>
    <title>
        <text></text>
        <color>
            <red>0</red>
            <green>0</green>
            <blue>0</blue>
        </color>
        <font>1|Sans|12.0|1|GTK|1|</font>
    </title>
    <graph_settings>
        <show_title>true</show_title>
        <show_legend>true</show_legend>
        <show_plot_area_border>false</show_plot_area_border>
        <transparent>false</transparent>
    </graph_settings>
    <scroll>true</scroll>
    <update_period>3.0</update_period>
    <start>-12 hours 0.0 seconds</start>
    <end>now</end>
    <time_axis>
        <axis>
            <name>Time</name>
            <font>1|Sans|12.0|1|GTK|1|</font>
            <scale_font>1|Sans|10.0|0|GTK|1|</scale_font>
            <color>
                <red>0</red>
                <green>0</green>
                <blue>0</blue>
            </color>
            <min>1.464239239753E12</min>
            <max>1.464251332086E12</max>
            <log_scale>false</log_scale>
            <autoscale>true</autoscale>
            <visible>true</visible>
            <grid_line>
                <show_grid_line>true</show_grid_line>
                <dash_grid_line>true</dash_grid_line>
                <color>
                    <red>200</red>
                    <green>200</green>
                    <blue>200</blue>
                </color>
            </grid_line>
            <format>
                <auto_format>true</auto_format>
                <time_format>true</time_format>
                <format_pattern>HH:mm</format_pattern>
            </format>
        </axis>
    </time_axis>
    <background>
        <red>255</red>
        <green>255</green>
        <blue>255</blue>
    </background>
    <archive_rescale>NONE</archive_rescale>
    <axes>
        <axis>
            <name>HPRF-DBE1:APS:sV</name>
            <font>1|Sans|12.0|1|GTK|1|</font>
            <scale_font>1|Sans|10.0|0|GTK|1|</scale_font>
            <color>
                <red>21</red>
                <green>21</green>
                <blue>196</blue>
            </color>
            <min>10000.0</min>
            <max>18500.0</max>
            <log_scale>false</log_scale>
            <autoscale>false</autoscale>
            <visible>true</visible>
            <grid_line>
                <show_grid_line>true</show_grid_line>
                <dash_grid_line>true</dash_grid_line>
                <color>
                    <red>200</red>
                    <green>200</green>
                    <blue>200</blue>
                </color>
            </grid_line>
            <format>
                <auto_format>false</auto_format>
                <time_format>false</time_format>
                <format_pattern>0.###</format_pattern>
            </format>
        </axis>
    </axes>
    <annotations>
    </annotations>
    <pvlist>
        <pv>
            <name>HPRF-DBE2:APS:sV</name>
            <display_name>HPRF-DBE2:APS:sV</display_name>
            <visible>true</visible>
            <axis>0</axis>
            <linewidth>2</linewidth>
            <color>
                <red>21</red>
                <green>21</green>
                <blue>196</blue>
            </color>
            <trace_type>AREA</trace_type>
            <waveform_index>0</waveform_index>
            <period>0.0</period>
            <ring_size>5000</ring_size>
            <request>OPTIMIZED</request>
            <archive>
                <name>RDB</name>
                <url>jdbc:postgresql://192.168.10.108/css_archive_3_0_0</url>
                <key>1</key>
            </archive>
        </pv>
        <pv>
            <name>HPRF-DBE1:APS:sV</name>
            <display_name>HPRF-DBE1:APS:sV</display_name>
            <visible>true</visible>
            <axis>0</axis>
            <linewidth>2</linewidth>
            <color>
                <red>255</red>
                <green>0</green>
                <blue>0</blue>
            </color>
            <trace_type>AREA</trace_type>
            <waveform_index>0</waveform_index>
            <period>0.0</period>
            <ring_size>5000</ring_size>
            <request>OPTIMIZED</request>
            <archive>
                <name>RDB</name>
                <url>jdbc:postgresql://192.168.10.108/css_archive_3_0_0</url>
                <key>1</key>
            </archive>
        </pv>
    </pvlist>
</databrowser>