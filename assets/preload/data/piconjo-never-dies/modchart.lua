function start(song)
    print("Song: " .. song .. " @ " .. bpm .. " downscroll: " .. downscroll)
end

function setDefault(id)
    _G["defaultStrum" .. id .. "X"] = getActorX(id)
end

function update(elapsed)
    if
        (curStep >= 0 and curStep < 96) or -- waves during the speaking points
            (curStep >= 288 and curStep < 352)
     then
        local currentBeat = (songPos / 1000) * (bpm / 45)
        for i = 0, 7 do
            setActorX(_G["defaultStrum" .. i .. "X"] + 32 * math.sin((currentBeat + i * 0.25) * math.pi), i)
            setActorY(_G["defaultStrum" .. i .. "Y"] + 32 * math.cos((currentBeat + i * 0.25) * math.pi), i)
        end
    elseif
        (curStep >= 104 and curStep < 112) or -- this is the screamy part, the arrows will shake
            (curStep >= 136 and curStep < 144) or
            (curStep >= 168 and curStep < 176) or
            (curStep >= 200 and curStep < 208) or
            (curStep >= 279 and curStep < 288) or
            (curStep >= 360 and curStep < 368) or
            (curStep >= 392 and curStep < 400) or
            (curStep >= 424 and curStep < 432) or
            (curStep >= 456 and curStep < 464)
     then
        local currentBeat = (songPos / 1000) * (bpm / 45)
        for i = 0, 3 do
            setActorX(_G["defaultStrum" .. i .. "X"] + 32 * math.sin((currentBeat + i * 0.5) * math.pi * 10), i)
        end
    elseif (curStep >= 535 and curStep < 544)
    then
        local currentBeat = (songPos / 1000) * (bpm / 45)
        for i = 4, 7 do
            setActorX(_G["defaultStrum" .. i .. "X"] + 32 * math.sin((currentBeat + i * 0.5) * math.pi * 10), i)
        end
    elseif (curStep >= 599 and curStep < 608)
    then
        local currentBeat = (songPos / 1000) * (bpm / 45)
        for i = 0, 7 do
            setActorX(_G["defaultStrum" .. i .. "X"] + 32 * math.sin((currentBeat + i * 0.5) * math.pi * 10), i)
        end
    else
        for i = 0, 7 do -- arrows are ok
            setActorX(_G["defaultStrum" .. i .. "X"], i)
            setActorY(_G["defaultStrum" .. i .. "Y"], i)
        end
    end
end

function beatHit(beat)
    -- do nothing
end

function stepHit(step)
    --do nothing
end

function keyPressed(key)
    -- do nothing
end

print("Mod Chart script loaded :)") -- your code goes here
