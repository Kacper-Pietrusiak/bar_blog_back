import express from 'express';
import cors from  'cors';
import 'express-async-errors';
import {handleError} from "./utils/error";
import {postRouter} from "./routers/postRouter";

const app = express();

app.use(cors({
    origin: 'http://localhost:3000'
}));
app.use(express.json());

app.use(handleError)


//Routers

app.use('/drinks', postRouter)


app.listen(3001, '0.0.0.0', () => {
    console.log('application works on port http://localhost:3001')
})