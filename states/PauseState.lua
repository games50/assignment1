

PauseState = Class{__includes = BaseState}


-- enter the pause state with the current game's class
function PauseState:enter(params)
    -- save all the game's data into an object
    self.bird = params.bird
    self.score = params.score
    self.pipePairs = params.pipePairs
    self.timer = params.timer
    self.lastY = params.lastY
    sounds['music']:pause()-- pause the music
    sounds['pause']:play() -- play the pause sound
end

function PauseState:update(dt)
    -- go back to play with p is pressed
    if love.keyboard.wasPressed('p') then
        sounds['music']:resume() -- resume the song
        gStateMachine:change('play', self) -- go to play state and pass back the current game
    end
end

function PauseState:render()
    -- render the pause graphic
    love.graphics.draw(love.graphics.newImage('pause.png'), VIRTUAL_WIDTH / 2 - (50), VIRTUAL_HEIGHT / 2 - 50)

end