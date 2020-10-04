function tone = dial_tone(n)
    tone = [];
    a = num2str(n);
    fs = 44100;
    t = 0:1/fs:1-1/fs;
    for i = 1:size(a,2)
        b = a(i);
        if(b == '0')
            s0 = sin(2*pi*941*t) + sin(2*pi*1336*t);
            tone = horzcat(tone, s0);
            tone = horzcat(tone, zeros(1, fs*0.3));
        elseif(b == '1')
            s1 = sin(2*pi*697*t) + sin(2*pi*1209*t);
            tone = horzcat(tone, s1);
            tone = horzcat(tone, zeros(1, fs*0.3));
        elseif(b == '2')
            s2 = sin(2*pi*697*t) + sin(2*pi*1336*t);
            tone = horzcat(tone, s2);
            tone = horzcat(tone, zeros(1, fs*0.3));
        elseif(b == '3')
            s3 = sin(2*pi*697*t) + sin(2*pi*1477*t);
            tone = horzcat(tone, s3);
            tone = horzcat(tone, zeros(1, fs*0.3));
        elseif(b == '4')
            s4 = sin(2*pi*770*t) + sin(2*pi*1209*t);
            tone = horzcat(tone, s4);
            tone = horzcat(tone, zeros(1, fs*0.3));
        elseif(b == '5')
            s5 = sin(2*pi*770*t) + sin(2*pi*1336*t);
            tone = horzcat(tone, s5);
            tone = horzcat(tone, zeros(1, fs*0.3));
        elseif(b == '6')
            s6 = sin(2*pi*770*t) + sin(2*pi*1477*t);
            tone = horzcat(tone, s6);
            tone = horzcat(tone, zeros(1, fs*0.3));
        elseif(b == '7')
            s7 = sin(2*pi*852*t) + sin(2*pi*1209*t);
            tone = horzcat(tone, s7);
            tone = horzcat(tone, zeros(1, fs*0.3));
        elseif(b == '8')
            s8 = sin(2*pi*852*t) + sin(2*pi*1336*t);
            tone = horzcat(tone, s8);
            tone = horzcat(tone, zeros(1, fs*0.3));
        elseif(b == '9')
            s9 = sin(2*pi*852*t) + sin(2*pi*1477*t);
            tone = horzcat(tone, s9);
            tone = horzcat(tone, zeros(1, fs*0.3));
        end
    end
    
end
